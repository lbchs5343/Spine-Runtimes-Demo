package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g.aeh;
import g.bjq;
import g.cbz;
import g.chh;
import g.dub;
import g.eno;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbph extends zzayc implements zzbpj {
    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzA(bjq bjqVar, aeh aehVar, String str, zzbpm zzbpmVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, aehVar);
        r.writeString(str);
        zzaye.zzf(r, zzbpmVar);
        s(r, 28);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzB(aeh aehVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzC(bjq bjqVar, aeh aehVar, String str, zzbpm zzbpmVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, aehVar);
        r.writeString(str);
        zzaye.zzf(r, zzbpmVar);
        s(r, 32);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzD(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 21);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzE() throws RemoteException {
        s(r(), 8);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzF() throws RemoteException {
        s(r(), 9);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzG(boolean z) throws RemoteException {
        Parcel r = r();
        ClassLoader classLoader = zzaye.f4608a;
        r.writeInt(z ? 1 : 0);
        s(r, 25);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzH(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 39);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzI() throws RemoteException {
        s(r(), 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzJ(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 37);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzK(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 30);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzL() throws RemoteException {
        s(r(), 12);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final boolean zzM() throws RemoteException {
        Parcel p = p(r(), 22);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final boolean zzN() throws RemoteException {
        Parcel p = p(r(), 13);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbpr zzO() throws RemoteException {
        zzbpr zzbprVar;
        Parcel p = p(r(), 15);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbprVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzbprVar = queryLocalInterface instanceof zzbpr ? (zzbpr) queryLocalInterface : new zzbpr("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper", readStrongBinder);
        }
        p.recycle();
        return zzbprVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbps zzP() throws RemoteException {
        zzbps zzbpsVar;
        Parcel p = p(r(), 16);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbpsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzbpsVar = queryLocalInterface instanceof zzbps ? (zzbps) queryLocalInterface : new zzbps("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper", readStrongBinder);
        }
        p.recycle();
        return zzbpsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final Bundle zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final Bundle zzf() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final Bundle zzg() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final cbz zzh() throws RemoteException {
        Parcel p = p(r(), 26);
        cbz zzb = chh.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbgs zzi() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbpp zzj() throws RemoteException {
        zzbpp zzbpnVar;
        Parcel p = p(r(), 36);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbpnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            zzbpnVar = queryLocalInterface instanceof zzbpp ? (zzbpp) queryLocalInterface : new zzbpn(readStrongBinder);
        }
        p.recycle();
        return zzbpnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbpv zzk() throws RemoteException {
        zzbpv zzbptVar;
        Parcel p = p(r(), 27);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbptVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzbptVar = queryLocalInterface instanceof zzbpv ? (zzbpv) queryLocalInterface : new zzbpt(readStrongBinder);
        }
        p.recycle();
        return zzbptVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbru zzl() throws RemoteException {
        Parcel p = p(r(), 33);
        zzbru zzbruVar = (zzbru) zzaye.zza(p, zzbru.CREATOR);
        p.recycle();
        return zzbruVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbru zzm() throws RemoteException {
        Parcel p = p(r(), 34);
        zzbru zzbruVar = (zzbru) zzaye.zza(p, zzbru.CREATOR);
        p.recycle();
        return zzbruVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final bjq zzn() throws RemoteException {
        return dub.e(p(r(), 2));
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzo() throws RemoteException {
        s(r(), 5);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzp(bjq bjqVar, aeh aehVar, String str, zzbwu zzbwuVar, String str2) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, aehVar);
        r.writeString(null);
        zzaye.zzf(r, zzbwuVar);
        r.writeString(str2);
        s(r, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzq(bjq bjqVar, zzblt zzbltVar, List list) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbltVar);
        r.writeTypedList(list);
        s(r, 31);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzr(bjq bjqVar, zzbwu zzbwuVar, List list) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbwuVar);
        r.writeStringList(list);
        s(r, 23);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzs(aeh aehVar, String str) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, aehVar);
        r.writeString(str);
        s(r, 11);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzt(bjq bjqVar, aeh aehVar, String str, zzbpm zzbpmVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, aehVar);
        r.writeString(str);
        zzaye.zzf(r, zzbpmVar);
        s(r, 38);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzu(bjq bjqVar, eno enoVar, aeh aehVar, String str, zzbpm zzbpmVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzv(bjq bjqVar, eno enoVar, aeh aehVar, String str, String str2, zzbpm zzbpmVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, enoVar);
        zzaye.zzd(r, aehVar);
        r.writeString(str);
        r.writeString(str2);
        zzaye.zzf(r, zzbpmVar);
        s(r, 6);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzw(bjq bjqVar, eno enoVar, aeh aehVar, String str, String str2, zzbpm zzbpmVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, enoVar);
        zzaye.zzd(r, aehVar);
        r.writeString(str);
        r.writeString(str2);
        zzaye.zzf(r, zzbpmVar);
        s(r, 35);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzx(bjq bjqVar, aeh aehVar, String str, zzbpm zzbpmVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzy(bjq bjqVar, aeh aehVar, String str, String str2, zzbpm zzbpmVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, aehVar);
        r.writeString(str);
        r.writeString(str2);
        zzaye.zzf(r, zzbpmVar);
        s(r, 7);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzz(bjq bjqVar, aeh aehVar, String str, String str2, zzbpm zzbpmVar, zzbfn zzbfnVar, List list) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, aehVar);
        r.writeString(str);
        r.writeString(str2);
        zzaye.zzf(r, zzbpmVar);
        zzaye.zzd(r, zzbfnVar);
        r.writeStringList(list);
        s(r, 14);
    }
}
