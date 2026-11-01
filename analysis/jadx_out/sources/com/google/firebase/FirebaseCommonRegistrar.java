package com.google.firebase;

import android.content.Context;
import android.os.Build;
import com.google.firebase.components.ComponentRegistrar;
import g.aj;
import g.ao;
import g.bao;
import g.bdf;
import g.bfb;
import g.bff;
import g.bfq;
import g.bsm;
import g.ckd;
import g.cop;
import g.djj;
import g.fxj;
import g.gbg;
import g.rm;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes3.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    public static String a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        String str;
        ArrayList arrayList = new ArrayList();
        Class[] clsArr = new Class[0];
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(gbg.class);
        for (Class cls : clsArr) {
            bff.aj(cls, "Null interface");
        }
        Collections.addAll(hashSet, clsArr);
        djj djjVar = new djj(aj.class, 2, 0);
        if (hashSet.contains(djjVar.f14276a)) {
            throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
        }
        hashSet2.add(djjVar);
        arrayList.add(new bdf(new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new bfb(6), hashSet3));
        cop copVar = new cop(bfq.class, new Class[]{bsm.class, fxj.class});
        copVar.i(new djj(Context.class, 1, 0));
        copVar.i(new djj(rm.class, 1, 0));
        copVar.i(new djj(ao.class, 2, 0));
        copVar.i(new djj(gbg.class, 1, 1));
        copVar.f13233d = new bfb(5);
        arrayList.add(copVar.k());
        arrayList.add(ckd.aw("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(ckd.aw("fire-core", "20.1.2"));
        arrayList.add(ckd.aw("device-name", a(Build.PRODUCT)));
        arrayList.add(ckd.aw("device-model", a(Build.DEVICE)));
        arrayList.add(ckd.aw("device-brand", a(Build.BRAND)));
        arrayList.add(ckd.i("android-target-sdk", new bfb(9)));
        arrayList.add(ckd.i("android-min-sdk", new bfb(10)));
        arrayList.add(ckd.i("android-platform", new bfb(11)));
        arrayList.add(ckd.i("android-installer", new bfb(12)));
        try {
            bao.f11182a.getClass();
            str = "2.1.21";
        } catch (NoClassDefFoundError unused) {
            str = null;
        }
        if (str != null) {
            arrayList.add(ckd.aw("kotlin", str));
        }
        return arrayList;
    }
}
