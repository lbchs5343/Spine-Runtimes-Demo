package g;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class cpq {

    /* renamed from: a, reason: collision with root package name */
    public Object f13283a;

    /* renamed from: b, reason: collision with root package name */
    public Object f13284b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13285c;

    /* renamed from: d, reason: collision with root package name */
    public int f13286d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f13287e;

    public /* synthetic */ cpq(int i) {
        this.f13285c = i;
    }

    public cpq(BottomSheetBehavior bottomSheetBehavior) {
        this.f13285c = 0;
        this.f13284b = bottomSheetBehavior;
        this.f13283a = new byd(2, this);
    }

    public cpq(SideSheetBehavior sideSheetBehavior) {
        this.f13285c = 1;
        this.f13284b = sideSheetBehavior;
        this.f13283a = new fvi(24, this);
    }

    public cpq(cpq cpqVar, cqg[] cqgVarArr, boolean z, int i) {
        this.f13285c = 4;
        this.f13284b = cpqVar;
        this.f13283a = cqgVarArr;
        boolean z2 = false;
        if (cqgVarArr != null && z) {
            z2 = true;
        }
        this.f13287e = z2;
        this.f13286d = i;
    }

    public static final cpq f() {
        cpq cpqVar = new cpq(3);
        cpqVar.f13287e = false;
        cpqVar.f13286d = -1;
        cpqVar.f13283a = null;
        cpqVar.f13284b = null;
        return cpqVar;
    }

    public void g(int i) {
        switch (this.f13285c) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f13284b;
                WeakReference weakReference = bottomSheetBehavior.ap;
                if (weakReference != null && weakReference.get() != null) {
                    this.f13286d = i;
                    if (!this.f13287e) {
                        ((View) bottomSheetBehavior.ap.get()).postOnAnimation((byd) this.f13283a);
                        this.f13287e = true;
                        break;
                    }
                }
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f13284b;
                WeakReference weakReference2 = sideSheetBehavior.aa;
                if (weakReference2 != null && weakReference2.get() != null) {
                    this.f13286d = i;
                    if (!this.f13287e) {
                        ((View) sideSheetBehavior.aa.get()).postOnAnimation((fvi) this.f13283a);
                        this.f13287e = true;
                        break;
                    }
                }
                break;
        }
    }

    public gok h() {
        boolean z = this.f13287e;
        int i = this.f13286d;
        String str = (String) this.f13283a;
        cpo cpoVar = (cpo) this.f13284b;
        if (cpoVar == null) {
            cpoVar = hat.f().k();
        }
        return new gok(z, i, str, cpoVar);
    }
}
