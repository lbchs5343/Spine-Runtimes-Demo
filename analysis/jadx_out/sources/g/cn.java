package g;

import android.os.RemoteException;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbgs;

/* loaded from: classes3.dex */
public final class cn extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public ImageView.ScaleType f13156a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f13157b;

    /* renamed from: c, reason: collision with root package name */
    public evf f13158c;

    /* renamed from: d, reason: collision with root package name */
    public fxr f13159d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f13160e;

    /* renamed from: f, reason: collision with root package name */
    public eie f13161f;

    public final synchronized void g(eie eieVar) {
        this.f13161f = eieVar;
        if (this.f13157b) {
            ImageView.ScaleType scaleType = this.f13156a;
            zzbgc zzbgcVar = ((dii) eieVar.f15585g).f14226b;
            if (zzbgcVar != null && scaleType != null) {
                try {
                    zzbgcVar.zzdy(new bpp(scaleType));
                } catch (RemoteException e2) {
                    agd.f("Unable to call setMediaViewImageScaleType on delegate", e2);
                }
            }
        }
    }

    public fxr getMediaContent() {
        return this.f13159d;
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        zzbgc zzbgcVar;
        this.f13157b = true;
        this.f13156a = scaleType;
        eie eieVar = this.f13161f;
        if (eieVar == null || (zzbgcVar = ((dii) eieVar.f15585g).f14226b) == null || scaleType == null) {
            return;
        }
        try {
            zzbgcVar.zzdy(new bpp(scaleType));
        } catch (RemoteException e2) {
            agd.f("Unable to call setMediaViewImageScaleType on delegate", e2);
        }
    }

    public void setMediaContent(fxr fxrVar) {
        boolean z;
        boolean zzr;
        this.f13160e = true;
        this.f13159d = fxrVar;
        evf evfVar = this.f13158c;
        if (evfVar != null) {
            ((dii) evfVar.f16224f).d(fxrVar);
        }
        if (fxrVar == null) {
            return;
        }
        try {
            zzbgs zzbgsVar = ((clr) fxrVar).f13082b;
            if (zzbgsVar != null) {
                boolean z2 = false;
                try {
                    z = ((clr) fxrVar).f13081a.zzl();
                } catch (RemoteException e2) {
                    agd.f("", e2);
                    z = false;
                }
                if (!z) {
                    try {
                        z2 = ((clr) fxrVar).f13081a.zzk();
                    } catch (RemoteException e3) {
                        agd.f("", e3);
                    }
                    if (z2) {
                        zzr = zzbgsVar.zzr(new bpp(this));
                    }
                    removeAllViews();
                }
                zzr = zzbgsVar.zzs(new bpp(this));
                if (zzr) {
                    return;
                }
                removeAllViews();
            }
        } catch (RemoteException e4) {
            removeAllViews();
            agd.f("", e4);
        }
    }
}
