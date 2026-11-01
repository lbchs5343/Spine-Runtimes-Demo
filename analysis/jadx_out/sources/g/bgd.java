package g;

import android.graphics.drawable.GradientDrawable;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class bgd extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public int f11502a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11503b;

    /* renamed from: c, reason: collision with root package name */
    public int f11504c;

    /* renamed from: d, reason: collision with root package name */
    public int f11505d;

    /* renamed from: e, reason: collision with root package name */
    public int f11506e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f11507f;

    /* renamed from: g, reason: collision with root package name */
    public int f11508g;
    public int h;

    public static GradientDrawable i(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(i);
        return gradientDrawable;
    }

    public int getSize() {
        return this.f11507f.size();
    }

    public void setLoop(boolean z) {
        this.f11503b = z;
    }

    public void setSelectedColor(int i) {
        this.f11508g = i;
    }

    public void setUnSelectedColor(int i) {
        this.f11504c = i;
    }
}
