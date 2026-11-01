package g;

import androidx.appcompat.widget.Toolbar;

/* loaded from: classes.dex */
public final /* synthetic */ class bti implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12189a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Toolbar f12190b;

    public /* synthetic */ bti(Toolbar toolbar, int i) {
        this.f12189a = i;
        this.f12190b = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12189a) {
            case 0:
                glz glzVar = this.f12190b.ak;
                far farVar = glzVar == null ? null : glzVar.k;
                if (farVar != null) {
                    farVar.collapseActionView();
                    break;
                }
                break;
            default:
                this.f12190b.bi();
                break;
        }
    }
}
