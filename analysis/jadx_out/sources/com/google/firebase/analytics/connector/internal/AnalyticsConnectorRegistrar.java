package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import g.afe;
import g.aiv;
import g.bdf;
import g.bfy;
import g.bhz;
import g.ckd;
import g.cop;
import g.djj;
import g.dwm;
import g.fnq;
import g.oh;
import g.rm;
import g.se;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes3.dex */
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    public static afe lambda$getComponents$0(se seVar) {
        rm rmVar = (rm) seVar.b(rm.class);
        Context context = (Context) seVar.b(Context.class);
        oh ohVar = (oh) seVar.b(oh.class);
        ckd.k(rmVar);
        ckd.k(context);
        ckd.k(ohVar);
        ckd.k(context.getApplicationContext());
        if (bfy.v == null) {
            synchronized (bfy.class) {
                try {
                    if (bfy.v == null) {
                        Bundle bundle = new Bundle(1);
                        rmVar.p();
                        if ("[DEFAULT]".equals(rmVar.j)) {
                            ((aiv) ohVar).d();
                            bundle.putBoolean("dataCollectionDefaultEnabled", rmVar.q());
                        }
                        fnq fnqVar = bhz.h(context, null, null, bundle).f11622f;
                        bfy bfyVar = new bfy(0);
                        ckd.k(fnqVar);
                        new ConcurrentHashMap();
                        bfy.v = bfyVar;
                    }
                } finally {
                }
            }
        }
        return bfy.v;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    @SuppressLint({"MissingPermission"})
    public List<bdf> getComponents() {
        cop copVar = new cop(afe.class, new Class[0]);
        copVar.i(new djj(rm.class, 1, 0));
        copVar.i(new djj(Context.class, 1, 0));
        copVar.i(new djj(oh.class, 1, 0));
        copVar.f13233d = dwm.f14945b;
        if (!(copVar.f13232c == 0)) {
            throw new IllegalStateException("Instantiation type has already been set.");
        }
        copVar.f13232c = 2;
        return Arrays.asList(copVar.k(), ckd.aw("fire-analytics", "21.1.1"));
    }
}
