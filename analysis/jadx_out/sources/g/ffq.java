package g;

import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class ffq extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public static final int f16715a;

    /* renamed from: b, reason: collision with root package name */
    public final Calendar f16716b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16717c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16718d;

    static {
        f16715a = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public ffq() {
        Calendar d2 = fau.d(null);
        this.f16716b = d2;
        this.f16717c = d2.getMaximum(7);
        this.f16718d = d2.getFirstDayOfWeek();
    }

    public ffq(int i) {
        Calendar d2 = fau.d(null);
        this.f16716b = d2;
        this.f16717c = d2.getMaximum(7);
        this.f16718d = i;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f16717c;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        int i2 = this.f16717c;
        if (i >= i2) {
            return null;
        }
        int i3 = i + this.f16718d;
        if (i3 > i2) {
            i3 -= i2;
        }
        return Integer.valueOf(i3);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        int i2 = i + this.f16718d;
        int i3 = this.f16717c;
        if (i2 > i3) {
            i2 -= i3;
        }
        Calendar calendar = this.f16716b;
        calendar.set(7, i2);
        textView.setText(calendar.getDisplayName(7, f16715a, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
