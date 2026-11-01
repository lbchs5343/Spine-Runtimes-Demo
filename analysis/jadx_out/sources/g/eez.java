package g;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;

/* loaded from: classes3.dex */
public final class eez extends fso {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15410a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15411b;

    public /* synthetic */ eez(int i, Object obj) {
        this.f15410a = i;
        this.f15411b = obj;
    }

    private final void c(int i) {
    }

    @Override // g.fso
    public final void d(int i) {
        switch (this.f15410a) {
            case 0:
                break;
            default:
                fgx fgxVar = (fgx) this.f15411b;
                fgxVar.f16770a = true;
                etp etpVar = (etp) fgxVar.f16771b.get();
                if (etpVar != null) {
                    bko bkoVar = (bko) etpVar;
                    bkoVar.cq();
                    bkoVar.invalidateSelf();
                    break;
                }
                break;
        }
    }

    @Override // g.fso
    public final void e(Typeface typeface, boolean z) {
        switch (this.f15410a) {
            case 0:
                Chip chip = (Chip) this.f15411b;
                bko bkoVar = chip.o;
                chip.setText(bkoVar.f11751g ? bkoVar.ay : chip.getText());
                chip.requestLayout();
                chip.invalidate();
                break;
            default:
                if (!z) {
                    fgx fgxVar = (fgx) this.f15411b;
                    fgxVar.f16770a = true;
                    etp etpVar = (etp) fgxVar.f16771b.get();
                    if (etpVar != null) {
                        bko bkoVar2 = (bko) etpVar;
                        bkoVar2.cq();
                        bkoVar2.invalidateSelf();
                        break;
                    }
                }
                break;
        }
    }
}
