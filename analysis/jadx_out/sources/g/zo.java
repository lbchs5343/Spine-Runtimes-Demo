package g;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.activity.ComponentActivity;

/* loaded from: classes.dex */
public final class zo extends androidx.activity.result.a {
    public final /* synthetic */ ComponentActivity n;

    public zo(ComponentActivity componentActivity) {
        this.n = componentActivity;
    }

    @Override // androidx.activity.result.a
    public final void l(int i, ehj ehjVar, Object obj) {
        Bundle bundle;
        int i2;
        ComponentActivity componentActivity = this.n;
        aoy c2 = ehjVar.c(componentActivity, obj);
        if (c2 != null) {
            new Handler(Looper.getMainLooper()).post(new hdo(this, i, c2, 3));
            return;
        }
        Intent b2 = ehjVar.b(componentActivity, obj);
        if (b2.getExtras() != null && b2.getExtras().getClassLoader() == null) {
            b2.setExtrasClassLoader(componentActivity.getClassLoader());
        }
        if (b2.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            bundle = b2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            b2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        } else {
            bundle = null;
        }
        Bundle bundle2 = bundle;
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(b2.getAction())) {
            String[] stringArrayExtra = b2.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (stringArrayExtra == null) {
                stringArrayExtra = new String[0];
            }
            eyt.ak(componentActivity, stringArrayExtra, i);
            return;
        }
        if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(b2.getAction())) {
            componentActivity.startActivityForResult(b2, i, bundle2);
            return;
        }
        czn cznVar = (czn) b2.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
        try {
            i2 = i;
            try {
                componentActivity.startIntentSenderForResult(cznVar.getIntentSender(), i2, cznVar.getFillInIntent(), cznVar.getFlagsMask(), cznVar.getFlagsValues(), 0, bundle2);
            } catch (IntentSender.SendIntentException e2) {
                e = e2;
                new Handler(Looper.getMainLooper()).post(new hdo(this, i2, e, 4));
            }
        } catch (IntentSender.SendIntentException e3) {
            e = e3;
            i2 = i;
        }
    }
}
