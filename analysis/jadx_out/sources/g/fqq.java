package g;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* loaded from: classes3.dex */
public final class fqq implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17253a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ JsResult f17254b;

    public /* synthetic */ fqq(JsResult jsResult, int i) {
        this.f17253a = i;
        this.f17254b = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f17253a) {
            case 0:
                this.f17254b.cancel();
                break;
            default:
                this.f17254b.confirm();
                break;
        }
    }
}
