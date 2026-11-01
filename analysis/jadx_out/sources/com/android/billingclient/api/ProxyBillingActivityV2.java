package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.activity.ComponentActivity;
import com.google.android.apps.common.proguard.UsedByReflection;
import g.adw;
import g.aly;
import g.aoy;
import g.bff;
import g.bio;
import g.czn;
import g.emr;
import g.fnq;
import g.gbs;

@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes.dex */
public class ProxyBillingActivityV2 extends ComponentActivity {

    /* renamed from: c, reason: collision with root package name */
    public aly f404c;

    /* renamed from: d, reason: collision with root package name */
    public ResultReceiver f405d;

    /* renamed from: e, reason: collision with root package name */
    public ResultReceiver f406e;

    /* renamed from: f, reason: collision with root package name */
    public aly f407f;

    /* renamed from: g, reason: collision with root package name */
    public aly f408g;
    public ResultReceiver h;

    @Override // androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f407f = registerForActivityResult(new bio(2), new emr(26, this));
        this.f408g = registerForActivityResult(new bio(2), new fnq(25, this));
        this.f404c = registerForActivityResult(new bio(2), new aoy(this));
        if (bundle != null) {
            if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
                this.f405d = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
            }
            if (bundle.containsKey("external_payment_dialog_result_receiver")) {
                this.f406e = (ResultReceiver) bundle.getParcelable("external_payment_dialog_result_receiver");
            }
            if (bundle.containsKey("external_offer_flow_result_receiver")) {
                this.h = (ResultReceiver) bundle.getParcelable("external_offer_flow_result_receiver");
                return;
            }
            return;
        }
        gbs.i("ProxyBillingActivityV2", "Launching Play Store billing dialog");
        if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
            PendingIntent pendingIntent = (PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
            this.f405d = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
            aly alyVar = this.f407f;
            bff.p(pendingIntent, adw.KEY_PENDING_INTENT);
            IntentSender intentSender = pendingIntent.getIntentSender();
            bff.e(intentSender, "pendingIntent.intentSender");
            alyVar.a(new czn(intentSender, null, 0, 0));
            return;
        }
        if (getIntent().hasExtra("external_payment_dialog_pending_intent")) {
            PendingIntent pendingIntent2 = (PendingIntent) getIntent().getParcelableExtra("external_payment_dialog_pending_intent");
            this.f406e = (ResultReceiver) getIntent().getParcelableExtra("external_payment_dialog_result_receiver");
            aly alyVar2 = this.f408g;
            bff.p(pendingIntent2, adw.KEY_PENDING_INTENT);
            IntentSender intentSender2 = pendingIntent2.getIntentSender();
            bff.e(intentSender2, "pendingIntent.intentSender");
            alyVar2.a(new czn(intentSender2, null, 0, 0));
            return;
        }
        if (getIntent().hasExtra("external_offer_flow_pending_intent")) {
            PendingIntent pendingIntent3 = (PendingIntent) getIntent().getParcelableExtra("external_offer_flow_pending_intent");
            this.h = (ResultReceiver) getIntent().getParcelableExtra("external_offer_flow_result_receiver");
            aly alyVar3 = this.f404c;
            bff.p(pendingIntent3, adw.KEY_PENDING_INTENT);
            IntentSender intentSender3 = pendingIntent3.getIntentSender();
            bff.e(intentSender3, "pendingIntent.intentSender");
            alyVar3.a(new czn(intentSender3, null, 0, 0));
        }
    }

    @Override // androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f405d;
        if (resultReceiver != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f406e;
        if (resultReceiver2 != null) {
            bundle.putParcelable("external_payment_dialog_result_receiver", resultReceiver2);
        }
        ResultReceiver resultReceiver3 = this.h;
        if (resultReceiver3 != null) {
            bundle.putParcelable("external_offer_flow_result_receiver", resultReceiver3);
        }
    }
}
