package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import g.dek;
import g.egi;
import g.fay;
import g.flp;
import g.hbh;
import g.tn;
import g.ut;
import g.vf;

/* loaded from: classes.dex */
public final class o implements LayoutInflater.Factory2 {

    /* renamed from: a, reason: collision with root package name */
    public final v f203a;

    public o(v vVar) {
        this.f203a = vVar;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        x bq;
        boolean equals = FragmentContainerView.class.getName().equals(str);
        v vVar = this.f203a;
        if (equals) {
            return new FragmentContainerView(context, attributeSet, vVar);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, flp.f16998a);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(0);
            }
            int resourceId = obtainStyledAttributes.getResourceId(1, -1);
            String string = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            if (attributeValue != null) {
                try {
                    z = Fragment.class.isAssignableFrom(ut.b(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    z = false;
                }
                if (z) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    Fragment cc = resourceId != -1 ? vVar.cc(resourceId) : null;
                    if (cc == null && string != null) {
                        cc = vVar.bc(string);
                    }
                    if (cc == null && id != -1) {
                        cc = vVar.cc(id);
                    }
                    if (cc == null) {
                        ut bi = vVar.bi();
                        context.getClassLoader();
                        cc = Fragment.instantiate(((egi) bi).f15484d.af.h, attributeValue, null);
                        cc.mFromLayout = true;
                        cc.mFragmentId = resourceId != 0 ? resourceId : id;
                        cc.mContainerId = id;
                        cc.mTag = string;
                        cc.mInLayout = true;
                        cc.mFragmentManager = vVar;
                        fay fayVar = vVar.af;
                        cc.mHost = fayVar;
                        cc.onInflate((Context) fayVar.h, attributeSet, cc.mSavedFragmentState);
                        bq = vVar.bg(cc);
                        if (v.ao(2)) {
                            cc.toString();
                            Integer.toHexString(resourceId);
                        }
                    } else {
                        if (cc.mInLayout) {
                            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                        }
                        cc.mInLayout = true;
                        cc.mFragmentManager = vVar;
                        fay fayVar2 = vVar.af;
                        cc.mHost = fayVar2;
                        cc.onInflate((Context) fayVar2.h, attributeSet, cc.mSavedFragmentState);
                        bq = vVar.bq(cc);
                        if (v.ao(2)) {
                            cc.toString();
                            Integer.toHexString(resourceId);
                        }
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    vf vfVar = dek.f14057a;
                    dek.c(new hbh(cc, viewGroup));
                    dek.b(cc).getClass();
                    cc.mContainer = viewGroup;
                    bq.n();
                    bq.f();
                    View view2 = cc.mView;
                    if (view2 == null) {
                        throw new IllegalStateException(tn.ad("Fragment ", attributeValue, " did not create a view."));
                    }
                    if (resourceId != 0) {
                        view2.setId(resourceId);
                    }
                    if (cc.mView.getTag() == null) {
                        cc.mView.setTag(string);
                    }
                    cc.mView.addOnAttachStateChangeListener(new z(this, bq));
                    return cc.mView;
                }
            }
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
