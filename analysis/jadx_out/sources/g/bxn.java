package g;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public final class bxn extends FrameLayout implements ddr {

    /* renamed from: a, reason: collision with root package name */
    public final CollapsibleActionView f12392a;

    /* JADX WARN: Multi-variable type inference failed */
    public bxn(View view) {
        super(view.getContext());
        this.f12392a = (CollapsibleActionView) view;
        addView(view);
    }
}
