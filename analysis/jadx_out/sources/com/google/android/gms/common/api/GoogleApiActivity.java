package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import g.awe;
import g.ckd;
import g.dae;
import g.ecd;
import g.nk;
import g.tn;

@KeepName
/* loaded from: classes3.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3927a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f3928b = 0;

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f3928b = 0;
            setResult(i2, intent);
            if (booleanExtra) {
                ecd s = ecd.s(this);
                if (i2 == -1) {
                    dae daeVar = s.q;
                    daeVar.sendMessage(daeVar.obtainMessage(3));
                } else if (i2 == 0) {
                    s.w(new nk(13, null), getIntent().getIntExtra("failing_client_id", -1));
                }
            }
        } else if (i == 2) {
            this.f3928b = 0;
            setResult(i2, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f3928b = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        GoogleApiActivity googleApiActivity;
        super.onCreate(bundle);
        if (bundle != null) {
            this.f3928b = bundle.getInt("resolution");
        }
        if (this.f3928b == 1) {
            return;
        }
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            Log.e("GoogleApiActivity", "Activity started without extras");
            finish();
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
        Integer num = (Integer) extras.get("error_code");
        if (pendingIntent == null && num == null) {
            Log.e("GoogleApiActivity", "Activity started without resolution");
            finish();
            return;
        }
        if (pendingIntent == null) {
            ckd.k(num);
            awe.f10970a.f(this, num.intValue(), this);
            this.f3928b = 1;
            return;
        }
        try {
            googleApiActivity = this;
            try {
                googleApiActivity.startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                googleApiActivity.f3928b = 1;
            } catch (ActivityNotFoundException e2) {
                e = e2;
                if (extras.getBoolean("notify_manager", true)) {
                    ecd.s(this).w(new nk(22, null), getIntent().getIntExtra("failing_client_id", -1));
                } else {
                    String ad = tn.ad("Activity not found while launching ", pendingIntent.toString(), ".");
                    if (Build.FINGERPRINT.contains("generic")) {
                        ad = ad.concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                    }
                    Log.e("GoogleApiActivity", ad, e);
                }
                googleApiActivity.f3928b = 1;
                finish();
            } catch (IntentSender.SendIntentException e3) {
                e = e3;
                Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e);
                finish();
            }
        } catch (ActivityNotFoundException e4) {
            e = e4;
            googleApiActivity = this;
        } catch (IntentSender.SendIntentException e5) {
            e = e5;
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.f3928b);
        super.onSaveInstanceState(bundle);
    }
}
