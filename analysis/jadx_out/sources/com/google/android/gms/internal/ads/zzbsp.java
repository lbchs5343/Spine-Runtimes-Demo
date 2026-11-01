package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import g.agd;
import g.bjq;
import g.bmt;
import g.bnq;
import g.bof;
import g.clg;
import g.clr;
import g.cvj;
import g.dpt;
import g.eox;
import g.fxr;
import g.gcq;
import g.gga;
import g.gge;
import g.gqg;
import g.gqh;
import g.xn;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbsp extends NativeAd {

    /* renamed from: b, reason: collision with root package name */
    public final zzbsm f4982b;

    /* renamed from: d, reason: collision with root package name */
    public final zzbhv f4984d;

    /* renamed from: f, reason: collision with root package name */
    public final zzbso f4986f;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f4985e = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f4983c = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|1|(3:2|3|(2:5|(5:8|(1:10)(1:17)|(3:12|13|14)(1:16)|15|6)))|(3:19|20|(2:22|(5:25|(1:27)(1:34)|(3:29|30|31)(1:33)|32|23)))|(2:36|37)|(7:39|40|41|42|(2:44|45)|47|48)|53|40|41|42|(0)|47|48) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a9, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00aa, code lost:
    
        g.agd.f("", r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009c A[Catch: RemoteException -> 0x00a9, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x00a9, blocks: (B:42:0x0094, B:44:0x009c), top: B:41:0x0094 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbsp(zzbhv zzbhvVar) {
        zzbso zzbsoVar;
        zzbfy zzk;
        this.f4984d = zzbhvVar;
        zzbsm zzbsmVar = null;
        try {
            List zzu = zzbhvVar.zzu();
            if (zzu != null) {
                for (Object obj : zzu) {
                    zzbfy zzg = obj instanceof IBinder ? zzbfx.zzg((IBinder) obj) : null;
                    if (zzg != null) {
                        this.f4985e.add(new zzbso(zzg));
                    }
                }
            }
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
        try {
            List zzv = this.f4984d.zzv();
            if (zzv != null) {
                for (Object obj2 : zzv) {
                    gga c2 = obj2 instanceof IBinder ? gqh.c((IBinder) obj2) : null;
                    if (c2 != null) {
                        this.f4983c.add(new xn(c2));
                    }
                }
            }
        } catch (RemoteException e3) {
            agd.f("", e3);
        }
        try {
            zzk = this.f4984d.zzk();
        } catch (RemoteException e4) {
            agd.f("", e4);
        }
        if (zzk != null) {
            zzbsoVar = new zzbso(zzk);
            this.f4986f = zzbsoVar;
            if (this.f4984d.zzi() != null) {
                zzbsmVar = new zzbsm(this.f4984d.zzi());
            }
            this.f4982b = zzbsmVar;
        }
        zzbsoVar = null;
        this.f4986f = zzbsoVar;
        if (this.f4984d.zzi() != null) {
        }
        this.f4982b = zzbsmVar;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final /* bridge */ /* synthetic */ bjq a() {
        try {
            return this.f4984d.zzm();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final void cancelUnconfirmedClick() {
        try {
            this.f4984d.zzw();
        } catch (RemoteException e2) {
            agd.f("Failed to cancelUnconfirmedClick", e2);
        }
    }

    public final void destroy() {
        try {
            this.f4984d.zzx();
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public final void enableCustomClickGesture() {
        try {
            this.f4984d.zzD();
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public final gge getAdChoicesInfo() {
        return this.f4982b;
    }

    public final String getAdvertiser() {
        try {
            return this.f4984d.zzn();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getBody() {
        try {
            return this.f4984d.zzo();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final String getCallToAction() {
        try {
            return this.f4984d.zzp();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final Bundle getExtras() {
        try {
            Bundle zzf = this.f4984d.zzf();
            if (zzf != null) {
                return zzf;
            }
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getHeadline() {
        try {
            return this.f4984d.zzq();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final eox getIcon() {
        return this.f4986f;
    }

    public final List<eox> getImages() {
        return this.f4985e;
    }

    public final fxr getMediaContent() {
        zzbhv zzbhvVar = this.f4984d;
        try {
            if (zzbhvVar.zzj() != null) {
                return new clr(zzbhvVar.zzj(), null);
            }
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
        return null;
    }

    public final List<bnq> getMuteThisAdReasons() {
        return this.f4983c;
    }

    public final String getPrice() {
        try {
            return this.f4984d.zzs();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final bof getResponseInfo() {
        gcq gcqVar;
        try {
            gcqVar = this.f4984d.zzg();
        } catch (RemoteException e2) {
            agd.f("", e2);
            gcqVar = null;
        }
        if (gcqVar != null) {
            return new bof(gcqVar);
        }
        return null;
    }

    public final Double getStarRating() {
        try {
            double zze = this.f4984d.zze();
            if (zze == -1.0d) {
                return null;
            }
            return Double.valueOf(zze);
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final String getStore() {
        try {
            return this.f4984d.zzt();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }

    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.f4984d.zzH();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return false;
        }
    }

    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.f4984d.zzI();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return false;
        }
    }

    public final void muteThisAd(bnq bnqVar) {
        zzbhv zzbhvVar = this.f4984d;
        try {
            try {
                if (zzbhvVar.zzI()) {
                    if (bnqVar == null) {
                        zzbhvVar.zzy(null);
                        return;
                    } else if (bnqVar instanceof xn) {
                        zzbhvVar.zzy(((xn) bnqVar).f20297b);
                        return;
                    } else {
                        agd.d("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
                        return;
                    }
                }
            } catch (RemoteException e2) {
                agd.f("", e2);
            }
            agd.d("Ad is not custom mute enabled");
        } catch (RemoteException e3) {
            agd.f("", e3);
        }
    }

    public final void performClick(Bundle bundle) {
        try {
            this.f4984d.zzz(bundle);
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public final void recordCustomClickGesture() {
        try {
            this.f4984d.zzA();
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordEvent(Bundle bundle) {
        try {
            this.f4984d.zzB(bundle);
        } catch (RemoteException e2) {
            agd.f("Failed to record native event", e2);
        }
    }

    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f4984d.zzJ(bundle);
        } catch (RemoteException e2) {
            agd.f("", e2);
            return false;
        }
    }

    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f4984d.zzC(bundle);
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public final void setMuteThisAdListener(gqg gqgVar) {
        try {
            this.f4984d.zzE(new clg("com.google.android.gms.ads.internal.client.IMuteThisAdListener"));
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public final void setOnPaidEventListener(dpt dptVar) {
        try {
            this.f4984d.zzF(new bmt());
        } catch (RemoteException e2) {
            agd.f("Failed to setOnPaidEventListener", e2);
        }
    }

    public final void setUnconfirmedClickListener(cvj cvjVar) {
        try {
            this.f4984d.zzG(new zzbsw(cvjVar));
        } catch (RemoteException e2) {
            agd.f("Failed to setUnconfirmedClickListener", e2);
        }
    }
}
