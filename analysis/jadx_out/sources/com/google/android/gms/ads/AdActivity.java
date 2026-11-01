package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbtg;
import g.agd;
import g.avs;
import g.bpp;
import g.cbv;
import g.ph;

/* loaded from: classes3.dex */
public final class AdActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    public zzbtg f3919a;

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                zzbtgVar.zzh(i, i2, intent);
            }
        } catch (Exception e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                if (!zzbtgVar.zzH()) {
                    return;
                }
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        super.onBackPressed();
        try {
            zzbtg zzbtgVar2 = this.f3919a;
            if (zzbtgVar2 != null) {
                zzbtgVar2.zzi();
            }
        } catch (RemoteException e3) {
            agd.g("#007 Could not call remote method.", e3);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                zzbtgVar.zzk(new bpp(configuration));
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ph phVar = cbv.f12612a.f12616e;
        phVar.getClass();
        avs avsVar = new avs(phVar, this);
        Intent intent = getIntent();
        boolean z = false;
        if (intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        } else {
            agd.d("useClientJar flag not found in activity intent extras.");
        }
        zzbtg zzbtgVar = (zzbtg) avsVar.j(this, z);
        this.f3919a = zzbtgVar;
        if (zzbtgVar == null) {
            agd.g("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            zzbtgVar.zzl(bundle);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                zzbtgVar.zzm();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                zzbtgVar.zzo();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                zzbtgVar.zzp(i, strArr, iArr);
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                zzbtgVar.zzq();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                zzbtgVar.zzr();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                zzbtgVar.zzs(bundle);
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                zzbtgVar.zzt();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                zzbtgVar.zzu();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            zzbtg zzbtgVar = this.f3919a;
            if (zzbtgVar != null) {
                zzbtgVar.zzv();
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        zzbtg zzbtgVar = this.f3919a;
        if (zzbtgVar != null) {
            try {
                zzbtgVar.zzx();
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        zzbtg zzbtgVar = this.f3919a;
        if (zzbtgVar != null) {
            try {
                zzbtgVar.zzx();
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zzbtg zzbtgVar = this.f3919a;
        if (zzbtgVar != null) {
            try {
                zzbtgVar.zzx();
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
            }
        }
    }
}
