package cn.trinea.android.lib.alliance.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;
import g.exz;

/* loaded from: classes.dex */
public class UsefulAppsRecyclerView extends RecyclerView {
    public UsefulAppsRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClipToOutline(true);
        addItemDecoration(new exz(this));
    }
}
