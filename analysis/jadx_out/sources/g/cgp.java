package g;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbel;

/* loaded from: classes3.dex */
public abstract class cgp extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public final ctl f12849a;

    public cgp(Context context) {
        super(context);
        this.f12849a = new ctl(this);
    }

    public final void b(awn awnVar) {
        ckd.aj("#008 Must be called on the main UI thread.");
        zzbcn.zza(getContext());
        if (((Boolean) zzbel.zzf.zze()).booleanValue()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                ga.f17769b.execute(new fuy(this, 0, awnVar));
                return;
            }
        }
        this.f12849a.r(awnVar.f10978a);
    }

    public nl getAdListener() {
        return (nl) this.f12849a.m;
    }

    public gin getAdSize() {
        eno zzg;
        ctl ctlVar = this.f12849a;
        ctlVar.getClass();
        try {
            deq deqVar = (deq) ctlVar.k;
            if (deqVar != null && (zzg = deqVar.zzg()) != null) {
                return new gin(zzg.zze, zzg.zzb, zzg.zza);
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        gin[] ginVarArr = (gin[]) ctlVar.f13466a;
        if (ginVarArr != null) {
            return ginVarArr[0];
        }
        return null;
    }

    public String getAdUnitId() {
        deq deqVar;
        ctl ctlVar = this.f12849a;
        if (((String) ctlVar.f13469d) == null && (deqVar = (deq) ctlVar.k) != null) {
            try {
                ctlVar.f13469d = deqVar.zzr();
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
            }
        }
        return (String) ctlVar.f13469d;
    }

    public dpt getOnPaidEventListener() {
        this.f12849a.getClass();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public bof getResponseInfo() {
        gcq gcqVar;
        deq deqVar;
        ctl ctlVar = this.f12849a;
        ctlVar.getClass();
        try {
            deqVar = (deq) ctlVar.k;
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
        if (deqVar != null) {
            gcqVar = deqVar.zzk();
            if (gcqVar == null) {
                return new bof(gcqVar);
            }
            return null;
        }
        gcqVar = null;
        if (gcqVar == null) {
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i5 = ((i3 - i) - measuredWidth) / 2;
        int i6 = ((i4 - i2) - measuredHeight) / 2;
        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        gin ginVar;
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            try {
                ginVar = getAdSize();
            } catch (NullPointerException e2) {
                agd.f("Unable to retrieve ad size.", e2);
                ginVar = null;
            }
            if (ginVar != null) {
                Context context = getContext();
                int i7 = ginVar.f18204f;
                if (i7 == -3) {
                    i4 = -1;
                } else if (i7 != -1) {
                    mx mxVar = cbv.f12612a.f12615d;
                    i4 = mx.k(context, i7);
                } else {
                    i4 = context.getResources().getDisplayMetrics().widthPixels;
                }
                int i8 = ginVar.h;
                if (i8 == -4 || i8 == -3) {
                    i5 = -1;
                } else if (i8 != -2) {
                    mx mxVar2 = cbv.f12612a.f12615d;
                    i5 = mx.k(context, i8);
                } else {
                    i5 = eno.zza(context.getResources().getDisplayMetrics());
                }
                i3 = i5;
                i6 = i4;
            } else {
                i3 = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            i6 = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(i6, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setAdListener(nl nlVar) {
        ctl ctlVar = this.f12849a;
        ctlVar.m = nlVar;
        cza czaVar = (cza) ctlVar.f13470e;
        synchronized (czaVar.f13799g) {
            czaVar.h = nlVar;
        }
        if (nlVar == 0) {
            this.f12849a.v(null);
            return;
        }
        if (nlVar instanceof evo) {
            this.f12849a.v((evo) nlVar);
        }
        if (nlVar instanceof eus) {
            this.f12849a.s((eus) nlVar);
        }
    }

    public void setAdSize(gin ginVar) {
        gin[] ginVarArr = {ginVar};
        ctl ctlVar = this.f12849a;
        if (((gin[]) ctlVar.f13466a) != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        ctlVar.o(ginVarArr);
    }

    public void setAdUnitId(String str) {
        ctl ctlVar = this.f12849a;
        if (((String) ctlVar.f13469d) != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        ctlVar.f13469d = str;
    }

    public void setOnPaidEventListener(dpt dptVar) {
        ctl ctlVar = this.f12849a;
        ctlVar.getClass();
        try {
            deq deqVar = (deq) ctlVar.k;
            if (deqVar != null) {
                deqVar.zzP(new bmt());
            }
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }
}
