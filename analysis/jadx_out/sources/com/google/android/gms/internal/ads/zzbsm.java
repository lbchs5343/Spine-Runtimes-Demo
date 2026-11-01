package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import g.agd;
import g.eox;
import g.gge;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbsm extends gge {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4973a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final String f4974b;

    public zzbsm(zzbfr zzbfrVar) {
        try {
            this.f4974b = zzbfrVar.zzg();
        } catch (RemoteException e2) {
            agd.f("", e2);
            this.f4974b = "";
        }
        try {
            for (Object obj : zzbfrVar.zzh()) {
                zzbfy zzg = obj instanceof IBinder ? zzbfx.zzg((IBinder) obj) : null;
                if (zzg != null) {
                    this.f4973a.add(new zzbso(zzg));
                }
            }
        } catch (RemoteException e3) {
            agd.f("", e3);
        }
    }

    public final List<eox> getImages() {
        return this.f4973a;
    }

    public final CharSequence getText() {
        return this.f4974b;
    }
}
