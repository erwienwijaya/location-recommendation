/**
 * Created by erwien on 25/07/2016.
 */
angular.module('angularDatatablesModule', ['datatables']).run(initDT);

function initDT(DTDefaultOptions) {
    DTDefaultOptions.setLoadingTemplate('<img src="/angular/images/loading.gif">');
}

