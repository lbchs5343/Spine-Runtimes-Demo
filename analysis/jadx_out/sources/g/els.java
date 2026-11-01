package g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;

/* loaded from: classes.dex */
public final class els extends bgv {
    public far o;
    public apv p;
    public final int q;
    public final int r;

    public els(Context context, boolean z) {
        super(context, z);
        if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
            this.r = 21;
            this.q = 22;
        } else {
            this.r = 22;
            this.q = 21;
        }
    }

    @Override // g.bgv, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        hen henVar;
        int i;
        int pointToPosition;
        int i2;
        if (this.p != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                i = headerViewListAdapter.getHeadersCount();
                henVar = (hen) headerViewListAdapter.getWrappedAdapter();
            } else {
                henVar = (hen) adapter;
                i = 0;
            }
            far item = (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i2 = pointToPosition - i) < 0 || i2 >= henVar.getCount()) ? null : henVar.getItem(i2);
            far farVar = this.o;
            if (farVar != item) {
                ftn ftnVar = henVar.f19342c;
                if (farVar != null) {
                    this.p.l(ftnVar, farVar);
                }
                this.o = item;
                if (item != null) {
                    this.p.j(ftnVar, item);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i == this.r) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i != this.q) {
            return super.onKeyDown(i, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (hen) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (hen) adapter).f19342c.at(false);
        return true;
    }

    public void setHoverListener(apv apvVar) {
        this.p = apvVar;
    }

    @Override // g.bgv, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
