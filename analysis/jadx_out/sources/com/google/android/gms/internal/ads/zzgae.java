package com.google.android.gms.internal.ads;

import g.bfc;
import g.cfc;
import g.gqa;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class zzgae {
    public static ArrayList zza(int i) {
        bfc.g(i, "initialArraySize");
        return new ArrayList(i);
    }

    public static List zzb(List list, zzfwh zzfwhVar) {
        return list instanceof RandomAccess ? new gqa(list, zzfwhVar) : new cfc(list, zzfwhVar);
    }
}
