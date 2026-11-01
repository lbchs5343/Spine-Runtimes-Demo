package g;

import android.view.Window;
import android.view.WindowManager;

/* loaded from: classes.dex */
public final class elb {

    /* renamed from: a, reason: collision with root package name */
    public final int f15738a;

    /* renamed from: b, reason: collision with root package name */
    public final Window f15739b;

    /* renamed from: c, reason: collision with root package name */
    public final int f15740c;

    /* renamed from: d, reason: collision with root package name */
    public final int f15741d;

    public elb(Window window) {
        this.f15739b = window;
        WindowManager.LayoutParams attributes = window.getAttributes();
        this.f15741d = attributes.width;
        this.f15738a = attributes.height;
        int i = (~attributes.flags) & 32;
        this.f15740c = i;
        window.addFlags(i);
        window.setLayout(1, 1);
    }
}
