package androidx.recyclerview.widget;

import android.os.Trace;
import android.view.View;
import android.view.ViewGroup;
import g.cpg;
import g.dbl;
import g.ul;
import g.yx;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class m {
    private final o mObservable = new o();
    private boolean mHasStableIds = false;
    private dbl mStateRestorationPolicy = dbl.ALLOW;

    public final void bindViewHolder(p pVar, int i) {
        m mVar = pVar.j;
        View view = pVar.n;
        boolean z = mVar == null;
        if (z) {
            pVar.f314g = i;
            if (hasStableIds()) {
                pVar.l = getItemId(i);
            }
            pVar.f313f = (pVar.f313f & (-520)) | 1;
            if (cpg.c()) {
                Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(pVar.t)));
            }
        }
        pVar.j = this;
        if (RecyclerView.sDebugAssertionsEnabled) {
            if (view.getParent() == null && view.isAttachedToWindow() != pVar.ah()) {
                throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + pVar.ah() + ", attached to window: " + view.isAttachedToWindow() + ", holder: " + pVar);
            }
            if (view.getParent() == null && view.isAttachedToWindow()) {
                throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + pVar);
            }
        }
        onBindViewHolder(pVar, i, pVar.ai());
        if (z) {
            ArrayList arrayList = pVar.i;
            if (arrayList != null) {
                arrayList.clear();
            }
            pVar.f313f &= -1025;
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof yx) {
                ((yx) layoutParams).f20373d = true;
            }
            Trace.endSection();
        }
    }

    public boolean canRestoreState() {
        int ordinal = this.mStateRestorationPolicy.ordinal();
        if (ordinal != 1) {
            if (ordinal == 2) {
                return false;
            }
        } else if (getItemCount() <= 0) {
            return false;
        }
        return true;
    }

    public final p createViewHolder(ViewGroup viewGroup, int i) {
        try {
            if (cpg.c()) {
                Trace.beginSection(String.format("RV onCreateViewHolder type=0x%X", Integer.valueOf(i)));
            }
            p onCreateViewHolder = onCreateViewHolder(viewGroup, i);
            if (onCreateViewHolder.n.getParent() != null) {
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            }
            onCreateViewHolder.t = i;
            Trace.endSection();
            return onCreateViewHolder;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public int findRelativeAdapterPositionIn(m mVar, p pVar, int i) {
        if (mVar == this) {
            return i;
        }
        return -1;
    }

    public abstract int getItemCount();

    public long getItemId(int i) {
        return -1L;
    }

    public int getItemViewType(int i) {
        return 0;
    }

    public final dbl getStateRestorationPolicy() {
        return this.mStateRestorationPolicy;
    }

    public final boolean hasObservers() {
        return this.mObservable.c();
    }

    public final boolean hasStableIds() {
        return this.mHasStableIds;
    }

    public final void notifyDataSetChanged() {
        this.mObservable.e();
    }

    public final void notifyItemChanged(int i) {
        this.mObservable.a(i, 1, null);
    }

    public final void notifyItemChanged(int i, Object obj) {
        this.mObservable.a(i, 1, obj);
    }

    public final void notifyItemInserted(int i) {
        this.mObservable.b(i, 1);
    }

    public final void notifyItemMoved(int i, int i2) {
        this.mObservable.f(i, i2);
    }

    public final void notifyItemRangeChanged(int i, int i2) {
        this.mObservable.a(i, i2, null);
    }

    public final void notifyItemRangeChanged(int i, int i2, Object obj) {
        this.mObservable.a(i, i2, obj);
    }

    public final void notifyItemRangeInserted(int i, int i2) {
        this.mObservable.b(i, i2);
    }

    public final void notifyItemRangeRemoved(int i, int i2) {
        this.mObservable.d(i, i2);
    }

    public final void notifyItemRemoved(int i) {
        this.mObservable.d(i, 1);
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
    }

    public abstract void onBindViewHolder(p pVar, int i);

    public void onBindViewHolder(p pVar, int i, List<Object> list) {
        onBindViewHolder(pVar, i);
    }

    public abstract p onCreateViewHolder(ViewGroup viewGroup, int i);

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
    }

    public boolean onFailedToRecycleView(p pVar) {
        return false;
    }

    public void onViewAttachedToWindow(p pVar) {
    }

    public void onViewDetachedFromWindow(p pVar) {
    }

    public void onViewRecycled(p pVar) {
    }

    public void registerAdapterDataObserver(ul ulVar) {
        this.mObservable.registerObserver(ulVar);
    }

    public void setHasStableIds(boolean z) {
        if (hasObservers()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.mHasStableIds = z;
    }

    public void setStateRestorationPolicy(dbl dblVar) {
        this.mStateRestorationPolicy = dblVar;
        this.mObservable.g();
    }

    public void unregisterAdapterDataObserver(ul ulVar) {
        this.mObservable.unregisterObserver(ulVar);
    }
}
