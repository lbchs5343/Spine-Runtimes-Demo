package g;

import com.google.android.material.internal.CheckableImageButton;

/* loaded from: classes3.dex */
public final class edb extends bhb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15336a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ edb(zq zqVar, int i) {
        super(zqVar);
        this.f15336a = i;
    }

    @Override // g.bhb
    public void u() {
        switch (this.f15336a) {
            case 0:
                zq zqVar = this.x;
                zqVar.f20411f = null;
                CheckableImageButton checkableImageButton = zqVar.f20409d;
                checkableImageButton.setOnLongClickListener(null);
                cux.at(checkableImageButton, null);
                break;
        }
    }
}
