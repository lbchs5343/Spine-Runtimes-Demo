package g;

import android.database.DataSetObserver;

/* loaded from: classes.dex */
public final class bva extends DataSetObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12255a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f12256b;

    public /* synthetic */ bva(int i, Object obj) {
        this.f12255a = i;
        this.f12256b = obj;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        switch (this.f12255a) {
            case 0:
                cfi cfiVar = (cfi) this.f12256b;
                if (cfiVar.ag.isShowing()) {
                    cfiVar.show();
                    break;
                }
                break;
            default:
                ((bfa) this.f12256b).bs();
                break;
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        switch (this.f12255a) {
            case 0:
                ((cfi) this.f12256b).dismiss();
                break;
            default:
                ((bfa) this.f12256b).bs();
                break;
        }
    }
}
