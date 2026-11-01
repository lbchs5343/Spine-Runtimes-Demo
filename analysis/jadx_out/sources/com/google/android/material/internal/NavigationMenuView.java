package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import g.eao;
import g.ftn;

/* loaded from: classes3.dex */
public class NavigationMenuView extends RecyclerView implements eao {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setLayoutManager(new LinearLayoutManager(1));
    }

    @Override // g.eao
    public final void c(ftn ftnVar) {
    }

    public int getWindowAnimations() {
        return 0;
    }
}
