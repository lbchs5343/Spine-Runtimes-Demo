package g;

import android.text.Editable;
import android.text.TextWatcher;

/* loaded from: classes3.dex */
public final class bvb implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12257a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f12258b;

    public /* synthetic */ bvb(int i, Object obj) {
        this.f12257a = i;
        this.f12258b = obj;
    }

    private final void c(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void d(Editable editable) {
    }

    private final void e(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void f(int i, int i2, int i3, CharSequence charSequence) {
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        switch (this.f12257a) {
            case 0:
                ((cuz) this.f12258b).ak();
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.f12257a;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        sd sdVar;
        switch (this.f12257a) {
            case 0:
                break;
            default:
                efx efxVar = (efx) this.f12258b;
                fvi fviVar = efxVar.aq;
                if (eyt.bq(charSequence.toString()) && (sdVar = efxVar.ar) != null) {
                    sdVar.ak(3);
                    efxVar.ar = null;
                }
                efxVar.bm();
                efxVar.an.removeCallbacks(fviVar);
                efxVar.an.postDelayed(fviVar, 120L);
                break;
        }
    }
}
