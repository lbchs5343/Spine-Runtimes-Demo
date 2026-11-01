package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.widget.LinearLayout;
import cn.trinea.android.developertools.R;
import com.google.android.gms.internal.ads.zzbpc;
import g.bhk;
import g.bpp;
import g.cbv;
import g.jm;
import g.ph;

/* loaded from: classes3.dex */
public final class OutOfContextTestingActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ph phVar = cbv.f12612a.f12616e;
        zzbpc zzbpcVar = new zzbpc();
        phVar.getClass();
        bhk bhkVar = (bhk) new jm(this, zzbpcVar).j(this, false);
        if (bhkVar == null) {
            finish();
            return;
        }
        setContentView(R.layout.admob_empty_layout);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.layout);
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            return;
        }
        String stringExtra = intent.getStringExtra("adUnit");
        if (stringExtra == null) {
            finish();
            return;
        }
        try {
            bhkVar.zze(stringExtra, new bpp(this), new bpp(linearLayout));
        } catch (RemoteException unused) {
            finish();
        }
    }
}
