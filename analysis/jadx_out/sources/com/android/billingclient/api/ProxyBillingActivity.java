package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.apps.common.proguard.UsedByReflection;
import g.apl;
import g.cgl;
import g.ejd;
import g.gbs;
import g.gvg;
import g.hm;

@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes.dex */
public class ProxyBillingActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    public boolean f398a;

    /* renamed from: b, reason: collision with root package name */
    public int f399b;

    /* renamed from: c, reason: collision with root package name */
    public long f400c;

    /* renamed from: d, reason: collision with root package name */
    public ResultReceiver f401d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f402e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f403f;

    public final Intent g(hm hmVar, long j) {
        Intent h = h();
        h.putExtra("RESPONSE_CODE", 6);
        h.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
        gvg d2 = ejd.d();
        d2.f18813e = 6;
        d2.f18811c = "An internal error occurred.";
        ejd h2 = d2.h();
        int i = cgl.f12845a;
        h.putExtra("FAILURE_LOGGING_PAYLOAD", cgl.c(hmVar, 2, h2, null, apl.BROADCAST_ACTION_UNSPECIFIED).j());
        h.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
        h.putExtra("billingClientTransactionId", j);
        h.putExtra("wasServiceAutoReconnected", this.f403f);
        return h;
    }

    public final Intent h() {
        Intent intent = new Intent("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        Intent g2;
        Bundle extras;
        super.onActivityResult(i, i2, intent);
        if (i == 100 || i == 110) {
            int i3 = gbs.d(intent, "ProxyBillingActivity").f15636a;
            if (i2 == -1) {
                i2 = -1;
            }
            if (intent == null) {
                g2 = g(i2 != -1 ? i2 != 0 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? hm.NULL_DATA_WITH_OTHER_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT : hm.NULL_DATA_WITH_ON_CREATE_RUNTIME_EXCEPTION_RESULT_CODE : hm.NULL_DATA_WITH_PLAY_CANCELED_WITHOUT_COMPLETE_ACTION_RESULT_CODE : hm.NULL_DATA_WITH_PLAY_CANCELED_RESULT_CODE : hm.NULL_DATA_WITH_CANCELLED_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT : hm.NULL_DATA_WITH_OK_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT, this.f400c);
            } else if (intent.getExtras() != null) {
                String string = intent.getExtras().getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
                if (string != null) {
                    g2 = new Intent("com.android.vending.billing.ALTERNATIVE_BILLING");
                    g2.setPackage(getApplicationContext().getPackageName());
                    g2.putExtra("ALTERNATIVE_BILLING_USER_CHOICE_DATA", string);
                    g2.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                } else {
                    Intent h = h();
                    h.putExtras(intent.getExtras());
                    h.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                    g2 = h;
                }
                g2.putExtra("billingClientTransactionId", this.f400c);
                g2.putExtra("wasServiceAutoReconnected", this.f403f);
            } else {
                g2 = g(hm.NULL_BUNDLE_IN_ACTIVITY_RESULT, this.f400c);
            }
            if (i == 110) {
                g2.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            sendBroadcast(g2);
        } else if (i == 101) {
            int i4 = gbs.f17875a;
            int i5 = (intent == null || (extras = intent.getExtras()) == null) ? 0 : extras.getInt("IN_APP_MESSAGE_RESPONSE_CODE", 0);
            ResultReceiver resultReceiver = this.f401d;
            if (resultReceiver != null) {
                resultReceiver.send(i5, intent == null ? null : intent.getExtras());
            }
        } else {
            int i6 = gbs.f17875a;
        }
        this.f402e = false;
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle != null) {
            gbs.i("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            this.f402e = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
            if (bundle.containsKey("in_app_message_result_receiver")) {
                this.f401d = (ResultReceiver) bundle.getParcelable("in_app_message_result_receiver");
            }
            this.f398a = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
            this.f399b = bundle.getInt("activity_code", 100);
            if (bundle.containsKey("billingClientTransactionId")) {
                this.f400c = bundle.getLong("billingClientTransactionId");
            }
            if (bundle.containsKey("wasServiceAutoReconnected")) {
                this.f403f = bundle.getBoolean("wasServiceAutoReconnected");
                return;
            }
            return;
        }
        gbs.i("ProxyBillingActivity", "Launching Play Store billing flow");
        this.f399b = 100;
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                this.f398a = true;
                this.f399b = 110;
            }
        } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
            this.f401d = (ResultReceiver) getIntent().getParcelableExtra("in_app_message_result_receiver");
            this.f399b = 101;
        } else {
            pendingIntent = null;
        }
        if (getIntent().hasExtra("billingClientTransactionId")) {
            this.f400c = getIntent().getLongExtra("billingClientTransactionId", 0L);
        }
        if (getIntent().hasExtra("wasServiceAutoReconnected")) {
            this.f403f = getIntent().getBooleanExtra("wasServiceAutoReconnected", false);
        }
        try {
            this.f402e = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), this.f399b, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException unused) {
            int i = gbs.f17875a;
            ResultReceiver resultReceiver = this.f401d;
            if (resultReceiver != null) {
                resultReceiver.send(0, null);
            } else {
                Intent g2 = g(hm.INTENT_SENDER_EXCEPTION, this.f400c);
                if (this.f398a) {
                    g2.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                }
                sendBroadcast(g2);
            }
            this.f402e = false;
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f402e) {
            Intent h = h();
            h.putExtra("RESPONSE_CODE", 1);
            h.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            if (this.f398a) {
                h.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            int i = this.f399b;
            if (i == 110 || i == 100) {
                h.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                h.putExtra("billingClientTransactionId", this.f400c);
            }
            sendBroadcast(h);
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f401d;
        if (resultReceiver != null) {
            bundle.putParcelable("in_app_message_result_receiver", resultReceiver);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f402e);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.f398a);
        bundle.putInt("activity_code", this.f399b);
        bundle.putLong("billingClientTransactionId", this.f400c);
        bundle.putBoolean("wasServiceAutoReconnected", this.f403f);
    }
}
