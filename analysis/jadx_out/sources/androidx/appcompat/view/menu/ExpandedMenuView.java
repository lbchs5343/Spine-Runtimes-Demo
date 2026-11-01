package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import g.dhl;
import g.dzh;
import g.eao;
import g.far;
import g.ftn;

/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements dhl, eao, AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f50a = {R.attr.background, R.attr.divider};

    /* renamed from: b, reason: collision with root package name */
    public ftn f51b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        dzh j = dzh.j(context, attributeSet, f50a, R.attr.listViewStyle);
        TypedArray typedArray = (TypedArray) j.f15121f;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(j.o(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(j.o(1));
        }
        j.af();
    }

    @Override // g.eao
    public final void c(ftn ftnVar) {
        this.f51b = ftnVar;
    }

    @Override // g.dhl
    public final boolean d(far farVar) {
        return this.f51b.ar(farVar, null, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        d((far) getAdapter().getItem(i));
    }
}
