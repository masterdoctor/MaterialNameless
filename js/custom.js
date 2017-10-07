var MaterialNameless = {
	maintenance: {
		active: mn_maintenance,
		message: mn_maintenance_message
	}
};

// Override MaterialSnackbar cleanup function
MaterialSnackbar.prototype.cleanup_ = function (manual) {
	if(manual == undefined)
		return;
	
    this.element_.classList.remove(this.cssClasses_.ACTIVE);
    setTimeout(function () {
        this.element_.setAttribute('aria-hidden', 'true');
        this.textElement_.textContent = '';
        if (!Boolean(this.actionElement_.getAttribute('aria-hidden'))) {
            this.setActionHidden_(true);
            this.actionElement_.textContent = '';
            this.actionElement_.removeEventListener('click', this.actionHandler_);
        }
        this.actionHandler_ = undefined;
        this.message_ = undefined;
        this.actionText_ = undefined;
        this.active = false;
        this.checkQueue_();
    }.bind(this), this.Constant_.ANIMATION_LENGTH);
};

$(document).ready(function(){
	setTimeout(function(){
		if(MaterialNameless.maintenance.active){
			var snackbarContainer = document.querySelector("#notificationBanner");
			var data = {
				message: MaterialNameless.maintenance.message,
				actionText: 'Okay',
				actionHandler: function(event){
					snackbarContainer.MaterialSnackbar.cleanup_(true);
				}
			};
			snackbarContainer.MaterialSnackbar.showSnackbar(data);
		}
	}, 100);
});