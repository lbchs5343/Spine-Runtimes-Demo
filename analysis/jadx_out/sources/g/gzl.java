package g;

import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class gzl {

    /* renamed from: a, reason: collision with root package name */
    public int f19054a;

    /* renamed from: b, reason: collision with root package name */
    public float f19055b;

    /* renamed from: c, reason: collision with root package name */
    public int f19056c;

    /* renamed from: f, reason: collision with root package name */
    public int f19059f;

    /* renamed from: g, reason: collision with root package name */
    public int f19060g;
    public int i;
    public boolean j;
    public int k;
    public int l;
    public float n;
    public boolean o;
    public int q;
    public int h = he.UNDEFINED_ITEM_ID;
    public int m = he.UNDEFINED_ITEM_ID;
    public int p = Integer.MIN_VALUE;

    /* renamed from: e, reason: collision with root package name */
    public int f19058e = Integer.MIN_VALUE;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f19057d = new ArrayList();

    public final int r() {
        return this.f19054a - this.l;
    }

    public final void s(View view, int i, int i2, int i3, int i4) {
        gth gthVar = (gth) view.getLayoutParams();
        this.h = Math.min(this.h, (view.getLeft() - gthVar.mp()) - i);
        this.m = Math.min(this.m, (view.getTop() - gthVar.q()) - i2);
        this.p = Math.max(this.p, gthVar.jy() + view.getRight() + i3);
        this.f19058e = Math.max(this.f19058e, gthVar.f() + view.getBottom() + i4);
    }
}
