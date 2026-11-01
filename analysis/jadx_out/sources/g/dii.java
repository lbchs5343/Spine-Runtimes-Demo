package g;

import android.content.Context;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbgc;

/* loaded from: classes3.dex */
public final class dii extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f14225a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbgc f14226b;

    public dii(Context context) {
        super(context);
        zzbgc zzbgcVar;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        this.f14225a = frameLayout;
        if (isInEditMode()) {
            zzbgcVar = null;
        } else {
            ph phVar = cbv.f12612a.f12616e;
            Context context2 = frameLayout.getContext();
            phVar.getClass();
            zzbgcVar = (zzbgc) new cvl(phVar, this, frameLayout, context2).j(context2, false);
        }
        this.f14226b = zzbgcVar;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f14225a);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f14225a;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public final View c(String str) {
        zzbgc zzbgcVar = this.f14226b;
        if (zzbgcVar != null) {
            try {
                bjq zzb = zzbgcVar.zzb(str);
                if (zzb != null) {
                    return (View) bpp.b(zzb);
                }
            } catch (RemoteException e2) {
                agd.f("Unable to call getAssetView on delegate", e2);
            }
        }
        return null;
    }

    public final void d(fxr fxrVar) {
        zzbgc zzbgcVar = this.f14226b;
        if (zzbgcVar == null) {
            return;
        }
        try {
            if (fxrVar instanceof clr) {
                zzbgcVar.zzdx(((clr) fxrVar).f13081a);
            } else if (fxrVar == null) {
                zzbgcVar.zzdx(null);
            } else {
                agd.c("Use MediaContent provided by NativeAd.getMediaContent");
            }
        } catch (RemoteException e2) {
            agd.f("Unable to call setMediaContent on delegate", e2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        zzbgc zzbgcVar = this.f14226b;
        if (zzbgcVar != null) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlh)).booleanValue()) {
                try {
                    zzbgcVar.zzd(new bpp(motionEvent));
                } catch (RemoteException e2) {
                    agd.f("Unable to call handleTouchEvent on delegate", e2);
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e(View view, String str) {
        zzbgc zzbgcVar = this.f14226b;
        if (zzbgcVar == null) {
            return;
        }
        try {
            zzbgcVar.zzdv(str, new bpp(view));
        } catch (RemoteException e2) {
            agd.f("Unable to call setAssetView on delegate", e2);
        }
    }

    public def getAdChoicesView() {
        c("3011");
        return null;
    }

    public final View getAdvertiserView() {
        return c("3005");
    }

    public final View getBodyView() {
        return c("3004");
    }

    public final View getCallToActionView() {
        return c("3002");
    }

    public final View getHeadlineView() {
        return c("3001");
    }

    public final View getIconView() {
        return c("3003");
    }

    public final View getImageView() {
        return c("3008");
    }

    public final cn getMediaView() {
        View c2 = c("3010");
        if (c2 instanceof cn) {
            return (cn) c2;
        }
        if (c2 == null) {
            return null;
        }
        agd.c("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return c("3007");
    }

    public final View getStarRatingView() {
        return c("3009");
    }

    public final View getStoreView() {
        return c("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        zzbgc zzbgcVar = this.f14226b;
        if (zzbgcVar == null) {
            return;
        }
        try {
            zzbgcVar.zze(new bpp(view), i);
        } catch (RemoteException e2) {
            agd.f("Unable to call onVisibilityChanged on delegate", e2);
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        addView(this.f14225a);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f14225a == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(def defVar) {
        e(defVar, "3011");
    }

    public final void setAdvertiserView(View view) {
        e(view, "3005");
    }

    public final void setBodyView(View view) {
        e(view, "3004");
    }

    public final void setCallToActionView(View view) {
        e(view, "3002");
    }

    public final void setClickConfirmingView(View view) {
        zzbgc zzbgcVar = this.f14226b;
        if (zzbgcVar == null) {
            return;
        }
        try {
            zzbgcVar.zzdw(new bpp(view));
        } catch (RemoteException e2) {
            agd.f("Unable to call setClickConfirmingView on delegate", e2);
        }
    }

    public final void setHeadlineView(View view) {
        e(view, "3001");
    }

    public final void setIconView(View view) {
        e(view, "3003");
    }

    public final void setImageView(View view) {
        e(view, "3008");
    }

    public final void setMediaView(cn cnVar) {
        e(cnVar, "3010");
        if (cnVar == null) {
            return;
        }
        evf evfVar = new evf(24, this);
        synchronized (cnVar) {
            cnVar.f13158c = evfVar;
            if (cnVar.f13160e) {
                d(cnVar.f13159d);
            }
        }
        cnVar.g(new eie(27, this));
    }

    public void setNativeAd(NativeAd nativeAd) {
        zzbgc zzbgcVar = this.f14226b;
        if (zzbgcVar == null) {
            return;
        }
        try {
            zzbgcVar.zzdz(nativeAd.a());
        } catch (RemoteException e2) {
            agd.f("Unable to call setNativeAd on delegate", e2);
        }
    }

    public final void setPriceView(View view) {
        e(view, "3007");
    }

    public final void setStarRatingView(View view) {
        e(view, "3009");
    }

    public final void setStoreView(View view) {
        e(view, "3006");
    }
}
