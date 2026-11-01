package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.coc;

/* loaded from: classes3.dex */
public final class zzbxt extends zzbwy {

    /* renamed from: a, reason: collision with root package name */
    public final String f5043a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5044b;

    public zzbxt(coc cocVar) {
        this(cocVar != null ? cocVar.getType() : "", cocVar != null ? cocVar.getAmount() : 1);
    }

    public zzbxt(String str, int i) {
        this.f5043a = str;
        this.f5044b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbwz
    public final int zze() throws RemoteException {
        return this.f5044b;
    }

    @Override // com.google.android.gms.internal.ads.zzbwz
    public final String zzf() throws RemoteException {
        return this.f5043a;
    }
}
