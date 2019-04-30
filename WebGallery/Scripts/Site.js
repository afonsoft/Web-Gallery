//Update Panel AjaxToolKit
if (typeof (Sys) !== 'undefined') {
    var prm = Sys.WebForms.PageRequestManager.getInstance();
    if (prm !== null) {
        prm.add_beginRequest(BeginRequestHandler);
        prm.add_endRequest(EndRequestHandler);
    }
}

//jQuery.noConflict()
jQuery(document).ready(function () {
    jQuery.noConflict();
    BeginRequestHandler(null, null);
    EndRequestHandler(null, null);
});

//Show Load Page
function PleaseWaitShow() {
    jQuery("#pleaseWait").css("display", "block");
    jQuery('#pleaseWait').show();
}
//Hide Load Page
function PleaseWaitHide() {
    jQuery("#pleaseWait").css("display", "none");
    jQuery('#pleaseWait').hide();
}

//Load page in ajax
jQuery(document).ajaxStart(function (event, request, settings) {
    PleaseWaitShow();
});
jQuery(document).ajaxSend(function (event, request, settings) {
    PleaseWaitShow();
});
jQuery(document).ajaxComplete(function (event, request, settings) {
    PleaseWaitHide();
});
jQuery(document).ajaxError(function (event, request, settings) {
    PleaseWaitHide();
});

function BeginRequestHandler(sender, args) {
    var elem;
    if (typeof (args) !== 'undefined' && args !== null) {
        elem = args.get_postBackElement();
        if (elem !== null) {
            //Recupera o Elemento que efetuou o postback
        }
    }
    PleaseWaitShow();
}

function EndRequestHandler(sender, args) {
    //Fix Firefox PostBack in Ajax
    hackEventWithinDoPostBack();
    //Hide Load
    PleaseWaitHide();
    //Verificar se ocorreu um erro no PostBack do AjaxToolKit
    if (typeof (args) !== 'undefined' && args !== null) {
        if (args.get_error() !== null) {
            Msg('Erro', args.get_error().message);
            args.set_errorHandled(true);
        }
    }
}

function CancelPostBack() {
    //Cancelar um postback do ajax
    if (typeof (Sys) !== 'undefined') {
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        if (prm !== null) {
            if (prm.get_isInAsyncPostBack()) {
                Msg('Cancelado','Requisição Ajax Postback Cancelado!');
                prm.abortPostBack();
                return true;
            }
        }
    }
    return true;
}

function AjaxHTML(objId, url) {
    PleaseWaitShow();
    jQuery('#' + objId).html("<img src='/Images/loader3.gif'/> Aguarde...");
    var htmlResult;
    jQuery.ajax({
        type: 'GET',
        url: url,
        dataType: 'html',
        async: true,
        success: function (result, status, xhr) {
            htmlResult = result;
            PleaseWaitHide();
        },
        error: function (xhr, status, error) {
            PleaseWaitHide();
            Msg('Erro',error);
        },
        complete: function () {
            PleaseWaitHide();
            jQuery('#' + objId).html(htmlResult);
        }
    });
}

function AjaxJSON(url, parametros) {
    PleaseWaitShow();
    var retorno = jQuery.ajax({
        type: 'POST',
        url: url,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        data: parametros,
        async: false,
        success: function (result, status, xhr) {
            PleaseWaitHide();
            return result.d;
        },
        error: function (xhr, status, error) {
            PleaseWaitHide();
            Msg('Erro', error);
        }
    });

    if (retorno.responseText !== null) {
        var obj = JSON.parse(retorno.responseText);
        if (obj.d !== null && obj.d !== "") {
            if (Object.prototype.toString.call(obj.d) === '[object Array]')
                return obj.d;
            var objRetorno = JSON.parse(obj.d);
            return objRetorno;
        } else {
            return null;
        }
    }
    return null;
}

function CloseModal(name) {
	jQuery('#' + name).modal('hide');
	jQuery('.modal-backdrop').remove();
	return true;
}

function OpenModal(name) {
	jQuery('#' + name).modal();
	return true;
}

function Msg(titulo, texto) {

    try {
        bootbox.alert({
            title: titulo,
            message: texto,
            callback: function() { jQuery('.modal-backdrop').remove(); }
        });

        return false;
    } catch (e1) {
        try {
            //Funcção para subistituir o Alert do JavaScript (Já existe na Avianca.Web.Libary.Page.BasePage)
            jQuery('body').find('#AlertMsg').remove();
            jQuery('body').append(
                "<div id='AlertMsg' title='Alerta' style='display: none; font-size: x-small; color: Black; font-family: Verdana; font-style: normal; font-weight: normal;' class='ui-dialog ui-resizable-handle'><br/><p>" +
                texto +
                "</p></div>");

            jQuery('#AlertMsg').dialog({
                autoOpen: false,
                bgiframe: false,
                hide: 'explode',
                resizable: true,
                draggable: true,
                modal: false,
                show: 'slide',
                minHeight: 150,
                minWidth: 300,
                maxHeight: 640,
                maxWidth: 960,
                title: "Alerta",
                buttons: {
                    "OK": function() {
                        jQuery('#AlertMsg').dialog("close");
                        return true;
                    }
                },
                open: function(type, data) { jQuery(this).parent().appendTo("form:first"); }
            });

            jQuery('#AlertMsg').dialog({ width: 360, height: 240 });
            jQuery('#AlertMsg').dialog('open');
            jQuery('.ui-effects-wrapper').remove();

            return false;
        } catch (e2) {
            alert(texto);
            return false;
        }
    }
}