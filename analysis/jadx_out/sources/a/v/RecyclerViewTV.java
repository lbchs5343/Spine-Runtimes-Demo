package a.v;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

/* loaded from: classes.dex */
public class RecyclerViewTV extends TextView {
    public RecyclerViewTV(Context context) {
        super(context);
    }

    public RecyclerViewTV(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RecyclerViewTV(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public RecyclerViewTV(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            if (isEnabled()) {
                super.setEnabled(false);
                super.setEnabled(true);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
