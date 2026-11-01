package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public final class zzggh {

    /* renamed from: a, reason: collision with root package name */
    public static final CopyOnWriteArrayList f8276a = new CopyOnWriteArrayList();

    public static zzggg zza(String str) throws GeneralSecurityException {
        Iterator it = f8276a.iterator();
        while (it.hasNext()) {
            zzggg zzgggVar = (zzggg) it.next();
            if (zzgggVar.zza()) {
                return zzgggVar;
            }
        }
        throw new GeneralSecurityException("No KMS client does support: ".concat(String.valueOf(str)));
    }
}
