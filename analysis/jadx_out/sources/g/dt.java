package g;

import android.os.Handler;
import android.view.View;

/* loaded from: classes.dex */
public final class dt implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14752a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ epi f14753b;

    public /* synthetic */ dt(epi epiVar, int i) {
        this.f14752a = i;
        this.f14753b = epiVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f14752a) {
            case 0:
                this.f14753b.stopSelf();
                break;
            default:
                new Handler().postDelayed(new byd(12, this), 500L);
                break;
        }
    }
}
