package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzfhq {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7898a = new HashMap();

    public final zzfhp zza(zzfhg zzfhgVar, Context context, zzfgy zzfgyVar, zzfhw zzfhwVar) {
        HashMap hashMap = this.f7898a;
        zzfhp zzfhpVar = (zzfhp) hashMap.get(zzfhgVar);
        if (zzfhpVar != null) {
            return zzfhpVar;
        }
        af afVar = new af(zzfhj.zza(zzfhgVar, context));
        zzfhp zzfhpVar2 = new zzfhp(afVar, new zzfhy(afVar, zzfgyVar, zzfhwVar));
        hashMap.put(zzfhgVar, zzfhpVar2);
        return zzfhpVar2;
    }
}
