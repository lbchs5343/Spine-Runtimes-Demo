package com.google.android.gms.internal.ads;

import g.bgb;
import g.bjz;
import g.bzv;
import g.eap;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzgwc {
    public static final zzgwc zza = new zzgwc(new zzgwd());
    public static final zzgwc zzb = new zzgwc(new zzgwh());

    /* renamed from: a, reason: collision with root package name */
    public final bjz f8645a;

    static {
        new zzgwc(new zzgwj());
        new zzgwc(new zzgwi());
        new zzgwc(new zzgwe());
        new zzgwc(new zzgwg());
        new zzgwc(new zzgwf());
    }

    public zzgwc(zzgwk zzgwkVar) {
        this.f8645a = !zzgmi.zzb() ? "The Android Project".equals(System.getProperty("java.vendor")) ? new bzv(4, zzgwkVar) : new bgb(3, zzgwkVar) : new eap(4, zzgwkVar);
    }

    public static List zzb(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        return arrayList;
    }

    public final Object zza(String str) throws GeneralSecurityException {
        return this.f8645a.zza(str);
    }
}
