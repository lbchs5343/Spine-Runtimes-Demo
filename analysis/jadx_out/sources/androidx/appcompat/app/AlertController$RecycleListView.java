package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import g.acs;

/* loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {

    /* renamed from: a, reason: collision with root package name */
    public final int f40a;

    /* renamed from: b, reason: collision with root package name */
    public final int f41b;

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, acs.w);
        this.f41b = obtainStyledAttributes.getDimensionPixelOffset(0, -1);
        this.f40a = obtainStyledAttributes.getDimensionPixelOffset(1, -1);
    }
}
