package g;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import cn.trinea.android.developertools.R;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class bgn {
    public final int aa;

    /* renamed from: ab, reason: collision with root package name */
    public Drawable f11522ab;
    public final boolean ac;
    public final Window ad;
    public final int ae;
    public View af;
    public View ag;
    public Message ah;

    /* renamed from: b, reason: collision with root package name */
    public int f11523b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f11524c;

    /* renamed from: e, reason: collision with root package name */
    public Message f11526e;

    /* renamed from: f, reason: collision with root package name */
    public ListAdapter f11527f;

    /* renamed from: g, reason: collision with root package name */
    public final giy f11528g;
    public CharSequence h;
    public CharSequence i;
    public final int j;
    public Message k;
    public CharSequence l;
    public final Context m;
    public ImageView n;
    public final int o;
    public final int p;
    public TextView q;
    public TextView r;
    public AlertController$RecycleListView s;
    public NestedScrollView t;
    public Button u;
    public Button v;
    public final fpl x;
    public Button y;
    public CharSequence z;
    public boolean w = false;

    /* renamed from: a, reason: collision with root package name */
    public int f11521a = -1;

    /* renamed from: d, reason: collision with root package name */
    public final get f11525d = new get(2, this);

    public bgn(Context context, fpl fplVar, Window window) {
        this.m = context;
        this.x = fplVar;
        this.ad = window;
        giy giyVar = new giy();
        giyVar.f18225b = new WeakReference(fplVar);
        this.f11528g = giyVar;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, acs.i, R.attr.alertDialogStyle, 0);
        this.aa = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.getResourceId(2, 0);
        this.j = obtainStyledAttributes.getResourceId(4, 0);
        this.p = obtainStyledAttributes.getResourceId(5, 0);
        this.o = obtainStyledAttributes.getResourceId(7, 0);
        this.ae = obtainStyledAttributes.getResourceId(3, 0);
        this.ac = obtainStyledAttributes.getBoolean(6, true);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        fplVar.d().s(1);
    }

    public static boolean ai(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (ai(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static void aj(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    public static ViewGroup ak(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void al(int i, DialogInterface.OnClickListener onClickListener, CharSequence charSequence) {
        Message obtainMessage = onClickListener != null ? this.f11528g.obtainMessage(i, onClickListener) : null;
        if (i == -3) {
            this.z = charSequence;
            this.ah = obtainMessage;
        } else if (i == -2) {
            this.h = charSequence;
            this.f11526e = obtainMessage;
        } else {
            if (i != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f11524c = charSequence;
            this.k = obtainMessage;
        }
    }
}
