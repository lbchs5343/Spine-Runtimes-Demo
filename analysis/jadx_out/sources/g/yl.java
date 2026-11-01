package g;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* loaded from: classes.dex */
public final class yl extends ClickableSpan {

    /* renamed from: a, reason: collision with root package name */
    public final int f20351a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20352b;

    /* renamed from: c, reason: collision with root package name */
    public final fnz f20353c;

    public yl(int i, fnz fnzVar, int i2) {
        this.f20352b = i;
        this.f20353c = fnzVar;
        this.f20351a = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f20352b);
        this.f20353c.f17119b.performAction(this.f20351a, bundle);
    }
}
