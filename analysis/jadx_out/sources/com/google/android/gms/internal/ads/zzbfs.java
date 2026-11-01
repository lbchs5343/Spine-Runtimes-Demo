package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import g.agd;
import g.dqn;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbfs {

    /* renamed from: a, reason: collision with root package name */
    public final zzbfr f4808a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4809b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final String f4810c;

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
    
        r4.f4809b.add(new com.google.android.gms.internal.ads.zzbfz(r3));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbfs(zzbfr zzbfrVar) {
        IBinder iBinder;
        this.f4808a = zzbfrVar;
        try {
            this.f4810c = zzbfrVar.zzg();
        } catch (RemoteException e2) {
            agd.f("", e2);
            this.f4810c = "";
        }
        try {
            for (Object obj : zzbfrVar.zzh()) {
                zzbfy zzbfyVar = null;
                if ((obj instanceof IBinder) && (iBinder = (IBinder) obj) != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    zzbfyVar = queryLocalInterface instanceof zzbfy ? (zzbfy) queryLocalInterface : new zzbfw(iBinder);
                }
            }
        } catch (RemoteException e3) {
            agd.f("", e3);
        }
    }

    public final List<dqn> getImages() {
        return this.f4809b;
    }

    public final CharSequence getText() {
        return this.f4810c;
    }
}
