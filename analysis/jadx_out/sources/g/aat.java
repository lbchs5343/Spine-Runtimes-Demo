package g;

import a.v.ScrollViewWithMaxHeight;

/* loaded from: classes3.dex */
public final class aat implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9879a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ScrollViewWithMaxHeight f9880b;

    public /* synthetic */ aat(ScrollViewWithMaxHeight scrollViewWithMaxHeight, int i) {
        this.f9879a = i;
        this.f9880b = scrollViewWithMaxHeight;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9879a) {
            case 0:
                ScrollViewWithMaxHeight scrollViewWithMaxHeight = this.f9880b;
                scrollViewWithMaxHeight.setScrollbarFadingEnabled(true);
                scrollViewWithMaxHeight.invalidate();
                break;
            case 1:
                ScrollViewWithMaxHeight scrollViewWithMaxHeight2 = this.f9880b;
                scrollViewWithMaxHeight2.setScrollbarFadingEnabled(true);
                scrollViewWithMaxHeight2.invalidate();
                break;
            case 2:
                ScrollViewWithMaxHeight scrollViewWithMaxHeight3 = this.f9880b;
                scrollViewWithMaxHeight3.setScrollbarFadingEnabled(true);
                scrollViewWithMaxHeight3.invalidate();
                break;
            case 3:
                ScrollViewWithMaxHeight scrollViewWithMaxHeight4 = this.f9880b;
                scrollViewWithMaxHeight4.setScrollbarFadingEnabled(true);
                scrollViewWithMaxHeight4.invalidate();
                break;
            case 4:
                ScrollViewWithMaxHeight scrollViewWithMaxHeight5 = this.f9880b;
                scrollViewWithMaxHeight5.setScrollbarFadingEnabled(true);
                scrollViewWithMaxHeight5.invalidate();
                break;
            default:
                ScrollViewWithMaxHeight scrollViewWithMaxHeight6 = this.f9880b;
                scrollViewWithMaxHeight6.setScrollbarFadingEnabled(true);
                scrollViewWithMaxHeight6.invalidate();
                break;
        }
    }
}
