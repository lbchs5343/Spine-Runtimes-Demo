package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import g.ao;
import g.aoi;
import g.bdf;
import g.bfb;
import g.bsm;
import g.ckd;
import g.cop;
import g.cyc;
import g.djj;
import g.gle;
import g.rm;
import g.se;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

@Keep
/* loaded from: classes3.dex */
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ gle lambda$getComponents$0(se seVar) {
        return new cyc((rm) seVar.b(rm.class), seVar.c(bsm.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<bdf> getComponents() {
        cop copVar = new cop(gle.class, new Class[0]);
        copVar.i(new djj(rm.class, 1, 0));
        copVar.i(new djj(bsm.class, 0, 1));
        copVar.f13233d = new bfb(13);
        bdf k = copVar.k();
        ao aoVar = new ao(0);
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(ao.class);
        Collections.addAll(hashSet, new Class[0]);
        return Arrays.asList(k, new bdf(new HashSet(hashSet), new HashSet(hashSet2), 0, 1, new aoi(8, aoVar), hashSet3), ckd.aw("fire-installations", "17.0.1"));
    }
}
