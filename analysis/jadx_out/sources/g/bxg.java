package g;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class bxg implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public Method f12376a;

    /* renamed from: b, reason: collision with root package name */
    public Context f12377b;

    /* renamed from: c, reason: collision with root package name */
    public final View f12378c;

    /* renamed from: d, reason: collision with root package name */
    public final String f12379d;

    public bxg(View view, String str) {
        this.f12378c = view;
        this.f12379d = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        Method method;
        if (this.f12376a == null) {
            View view2 = this.f12378c;
            Context context = view2.getContext();
            while (true) {
                String str2 = this.f12379d;
                if (context == null) {
                    int id = view2.getId();
                    if (id == -1) {
                        str = "";
                    } else {
                        str = " with id '" + view2.getContext().getResources().getResourceEntryName(id) + "'";
                    }
                    StringBuilder p = awf.p("Could not find method ", str2, "(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                    p.append(view2.getClass());
                    p.append(str);
                    throw new IllegalStateException(p.toString());
                }
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(str2, View.class)) != null) {
                        this.f12376a = method;
                        this.f12377b = context;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
        }
        try {
            this.f12376a.invoke(this.f12377b, view);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
        } catch (InvocationTargetException e3) {
            throw new IllegalStateException("Could not execute method for android:onClick", e3);
        }
    }
}
