package g;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class mv extends evf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bly f19676a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mv(bly blyVar) {
        super(1);
        this.f19676a = blyVar;
    }

    @Override // g.evf
    public final boolean b(int i, int i2, Bundle bundle) {
        int i3;
        bly blyVar = this.f19676a;
        Chip chip = blyVar.x;
        if (i == -1) {
            WeakHashMap weakHashMap = goi.f18490c;
            return chip.performAccessibilityAction(i2, bundle);
        }
        if (i2 == 1) {
            return blyVar.ae(i);
        }
        if (i2 == 2) {
            return blyVar.ag(i);
        }
        boolean z = false;
        if (i2 == 64) {
            AccessibilityManager accessibilityManager = blyVar.p;
            if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (i3 = blyVar.q) == i) {
                return false;
            }
            if (i3 != Integer.MIN_VALUE) {
                blyVar.q = Integer.MIN_VALUE;
                chip.invalidate();
                blyVar.ah(i3, 65536);
            }
            blyVar.q = i;
            chip.invalidate();
            blyVar.ah(i, 32768);
            return true;
        }
        if (i2 == 128) {
            if (blyVar.q != i) {
                return false;
            }
            blyVar.q = Integer.MIN_VALUE;
            chip.invalidate();
            blyVar.ah(i, 65536);
            return true;
        }
        Chip chip2 = blyVar.r;
        if (i2 == 16) {
            if (i == 0) {
                return chip2.performClick();
            }
            if (i == 1) {
                chip2.playSoundEffect(0);
                View.OnClickListener onClickListener = chip2.f9034d;
                if (onClickListener != null) {
                    onClickListener.onClick(chip2);
                    z = true;
                }
                if (chip2.n) {
                    chip2.p.ah(1, 1);
                }
            }
        }
        return z;
    }

    @Override // g.evf
    public final fnz c(int i) {
        return new fnz(AccessibilityNodeInfo.obtain(this.f19676a.ac(i).f17119b));
    }

    @Override // g.evf
    public final fnz d(int i) {
        bly blyVar = this.f19676a;
        int i2 = i == 2 ? blyVar.q : blyVar.t;
        if (i2 == Integer.MIN_VALUE) {
            return null;
        }
        return c(i2);
    }
}
