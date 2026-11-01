package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public abstract class dzw {
    public int m;
    public int n;
    public float o;
    public boolean p;
    public int q;
    public int[] r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public float y;
    public int z;

    public dzw(Context context, AttributeSet attributeSet, int i, int i2) {
        this.r = new int[0];
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_track_thickness);
        eyt.bn(context, attributeSet, i, i2);
        int[] iArr = git.m;
        eyt.ap(context, attributeSet, iArr, i, i2, new int[0]);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        this.s = gs.bd(context, obtainStyledAttributes, 10, dimensionPixelSize);
        TypedValue peekValue = obtainStyledAttributes.peekValue(9);
        if (peekValue != null) {
            int i3 = peekValue.type;
            if (i3 == 5) {
                this.w = Math.min(TypedValue.complexToDimensionPixelSize(peekValue.data, obtainStyledAttributes.getResources().getDisplayMetrics()), this.s / 2);
                this.p = false;
            } else if (i3 == 6) {
                this.y = Math.min(peekValue.getFraction(1.0f, 1.0f), 0.5f);
                this.p = true;
            }
        }
        this.z = obtainStyledAttributes.getInt(6, 0);
        this.m = obtainStyledAttributes.getInt(1, 0);
        this.v = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        int abs = Math.abs(obtainStyledAttributes.getDimensionPixelSize(13, 0));
        this.x = Math.abs(obtainStyledAttributes.getDimensionPixelSize(14, abs));
        this.n = Math.abs(obtainStyledAttributes.getDimensionPixelSize(15, abs));
        this.q = Math.abs(obtainStyledAttributes.getDimensionPixelSize(11, 0));
        this.u = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        this.o = obtainStyledAttributes.getFloat(2, 1.0f);
        if (!obtainStyledAttributes.hasValue(3)) {
            this.r = new int[]{eyt.z(context, R.attr.colorPrimary, -1)};
        } else if (obtainStyledAttributes.peekValue(3).type != 1) {
            this.r = new int[]{obtainStyledAttributes.getColor(3, -1)};
        } else {
            int[] intArray = context.getResources().getIntArray(obtainStyledAttributes.getResourceId(3, -1));
            this.r = intArray;
            if (intArray.length == 0) {
                throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
            }
        }
        if (obtainStyledAttributes.hasValue(8)) {
            this.t = obtainStyledAttributes.getColor(8, -1);
        } else {
            this.t = this.r[0];
            TypedArray obtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(new int[]{android.R.attr.disabledAlpha});
            float f2 = obtainStyledAttributes2.getFloat(0, 0.2f);
            obtainStyledAttributes2.recycle();
            this.t = eyt.bt(this.t, (int) (f2 * 255.0f));
        }
        obtainStyledAttributes.recycle();
    }

    public final int aa() {
        return this.p ? (int) (this.s * this.y) : this.w;
    }

    public final boolean ab(boolean z) {
        if (this.q <= 0) {
            return false;
        }
        if (z || this.n <= 0) {
            return z && this.x > 0;
        }
        return true;
    }

    public void j() {
        if (this.v < 0) {
            throw new IllegalArgumentException("indicatorTrackGapSize must be >= 0.");
        }
    }

    public boolean l() {
        return this.p && this.y == 0.5f;
    }
}
