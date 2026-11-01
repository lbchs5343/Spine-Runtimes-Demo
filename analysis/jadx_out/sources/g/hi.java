package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbai;

/* loaded from: classes3.dex */
public final class hi extends zzayc implements deq {
    public hi(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IAdManager", iBinder);
    }

    @Override // g.deq
    public final void zzB() {
        s(r(), 6);
    }

    @Override // g.deq
    public final void zzC(dyo dyoVar) {
        Parcel r = r();
        zzaye.zzf(r, dyoVar);
        s(r, 20);
    }

    @Override // g.deq
    public final void zzD(ejp ejpVar) {
        Parcel r = r();
        zzaye.zzf(r, ejpVar);
        s(r, 7);
    }

    @Override // g.deq
    public final void zzF(eno enoVar) {
        Parcel r = r();
        zzaye.zzd(r, enoVar);
        s(r, 13);
    }

    @Override // g.deq
    public final void zzG(fbj fbjVar) {
        Parcel r = r();
        zzaye.zzf(r, fbjVar);
        s(r, 8);
    }

    @Override // g.deq
    public final void zzH(zzbai zzbaiVar) {
        Parcel r = r();
        zzaye.zzf(r, zzbaiVar);
        s(r, 40);
    }

    @Override // g.deq
    public final void zzI(gby gbyVar) {
        Parcel r = r();
        zzaye.zzd(r, gbyVar);
        s(r, 39);
    }

    @Override // g.deq
    public final void zzJ(bzx bzxVar) {
        Parcel r = r();
        zzaye.zzf(r, bzxVar);
        s(r, 45);
    }

    @Override // g.deq
    public final void zzL(boolean z) {
        Parcel r = r();
        ClassLoader classLoader = zzaye.f4608a;
        r.writeInt(z ? 1 : 0);
        s(r, 34);
    }

    @Override // g.deq
    public final void zzN(boolean z) {
        Parcel r = r();
        ClassLoader classLoader = zzaye.f4608a;
        r.writeInt(z ? 1 : 0);
        s(r, 22);
    }

    @Override // g.deq
    public final void zzP(gwt gwtVar) {
        Parcel r = r();
        zzaye.zzf(r, gwtVar);
        s(r, 42);
    }

    @Override // g.deq
    public final void zzU(cpm cpmVar) {
        Parcel r = r();
        zzaye.zzd(r, cpmVar);
        s(r, 29);
    }

    @Override // g.deq
    public final void zzW(bjq bjqVar) {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 44);
    }

    @Override // g.deq
    public final boolean zzab(aeh aehVar) {
        Parcel r = r();
        zzaye.zzd(r, aehVar);
        Parcel p = p(r, 4);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // g.deq
    public final eno zzg() {
        Parcel p = p(r(), 12);
        eno enoVar = (eno) zzaye.zza(p, eno.CREATOR);
        p.recycle();
        return enoVar;
    }

    @Override // g.deq
    public final ejp zzi() {
        ejp gpcVar;
        Parcel p = p(r(), 33);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            gpcVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            gpcVar = queryLocalInterface instanceof ejp ? (ejp) queryLocalInterface : new gpc(readStrongBinder);
        }
        p.recycle();
        return gpcVar;
    }

    @Override // g.deq
    public final fbj zzj() {
        fbj dejVar;
        Parcel p = p(r(), 32);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            dejVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            dejVar = queryLocalInterface instanceof fbj ? (fbj) queryLocalInterface : new dej(readStrongBinder);
        }
        p.recycle();
        return dejVar;
    }

    @Override // g.deq
    public final gcq zzk() {
        gcq pyVar;
        Parcel p = p(r(), 41);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            pyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            pyVar = queryLocalInterface instanceof gcq ? (gcq) queryLocalInterface : new py(readStrongBinder);
        }
        p.recycle();
        return pyVar;
    }

    @Override // g.deq
    public final cbz zzl() {
        cbz ktVar;
        Parcel p = p(r(), 26);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            ktVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            ktVar = queryLocalInterface instanceof cbz ? (cbz) queryLocalInterface : new kt(readStrongBinder);
        }
        p.recycle();
        return ktVar;
    }

    @Override // g.deq
    public final bjq zzn() {
        return dub.e(p(r(), 1));
    }

    @Override // g.deq
    public final String zzr() {
        Parcel p = p(r(), 31);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // g.deq
    public final void zzx() {
        s(r(), 2);
    }

    @Override // g.deq
    public final void zzy(aeh aehVar, gpa gpaVar) {
        Parcel r = r();
        zzaye.zzd(r, aehVar);
        zzaye.zzf(r, gpaVar);
        s(r, 43);
    }

    @Override // g.deq
    public final void zzz() {
        s(r(), 5);
    }
}
