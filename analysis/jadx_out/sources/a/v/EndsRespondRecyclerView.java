package a.v;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import g.doi;

/* loaded from: classes.dex */
public class EndsRespondRecyclerView extends RecyclerView {
    private boolean isBottomLoading;
    private boolean isMoreBottomData;
    private OnBottomListener onBottomListener;
    private OnTopListener onTopListener;

    public interface OnBottomListener {
        void onBottom();
    }

    public interface OnTopListener {
        void onTop();
    }

    public EndsRespondRecyclerView(Context context) {
        super(context, null);
        this.isBottomLoading = false;
        this.isMoreBottomData = true;
        init();
    }

    public EndsRespondRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isBottomLoading = false;
        this.isMoreBottomData = true;
        init();
    }

    public EndsRespondRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isBottomLoading = false;
        this.isMoreBottomData = true;
        init();
    }

    private void init() {
        addOnScrollListener(new doi() { // from class: a.v.EndsRespondRecyclerView.1
            @Override // g.doi
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            }

            @Override // g.doi
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                EndsRespondRecyclerView endsRespondRecyclerView;
                androidx.recyclerview.widget.b layoutManager;
                if (EndsRespondRecyclerView.this.onBottomListener == null || i2 <= 0 || !EndsRespondRecyclerView.this.isMoreBottomData() || EndsRespondRecyclerView.this.isBottomLoading || (endsRespondRecyclerView = EndsRespondRecyclerView.this) == null || (layoutManager = endsRespondRecyclerView.getLayoutManager()) == null || endsRespondRecyclerView.getAdapter() == null) {
                    return;
                }
                int itemCount = endsRespondRecyclerView.getAdapter().getItemCount();
                if (itemCount != 0) {
                    if (!(layoutManager instanceof LinearLayoutManager)) {
                        return;
                    }
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                    View cq = linearLayoutManager.cq(linearLayoutManager.et() - 1, -1, true, false);
                    if ((cq != null ? androidx.recyclerview.widget.b.ed(cq) : -1) != itemCount - 1) {
                        return;
                    }
                }
                EndsRespondRecyclerView.this.onBottomBegin();
                EndsRespondRecyclerView.this.onBottomListener.onBottom();
            }
        });
    }

    public OnBottomListener getOnBottomListener() {
        return this.onBottomListener;
    }

    public OnTopListener getOnTopListener() {
        return this.onTopListener;
    }

    public boolean isMoreBottomData() {
        return this.isMoreBottomData;
    }

    public void onBottomBegin() {
        this.isBottomLoading = true;
    }

    public void onBottomEnd() {
        this.isBottomLoading = false;
    }

    public EndsRespondRecyclerView setMoreBottomData(boolean z) {
        this.isMoreBottomData = z;
        return this;
    }

    public EndsRespondRecyclerView setOnBottomListener(OnBottomListener onBottomListener) {
        this.onBottomListener = onBottomListener;
        return this;
    }

    public EndsRespondRecyclerView setOnTopListener(OnTopListener onTopListener) {
        this.onTopListener = onTopListener;
        return this;
    }
}
