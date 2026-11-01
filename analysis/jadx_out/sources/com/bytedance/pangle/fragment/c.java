package com.bytedance.pangle.fragment;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.os.Bundle;
import android.os.Parcelable;
import com.bytedance.pangle.util.FieldUtils;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public final class c implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    Fragment f1419a;

    public c(Fragment fragment) {
        this.f1419a = fragment;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0055, code lost:
    
        r0 = (java.lang.Object[]) java.lang.reflect.Array.newInstance(java.lang.Class.forName("android.app.FragmentState"), r10.length - 1);
        r2 = new int[r10.length - 1];
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
    
        if (r3 >= r10.length) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006d, code lost:
    
        r6 = r10[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006f, code lost:
    
        if (r6 == r5) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0071, code lost:
    
        r0[r4] = r6;
        r2[r4] = r3;
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007a, code lost:
    
        com.bytedance.pangle.util.FieldUtils.writeField(r9, "mActive", r0);
        com.bytedance.pangle.util.FieldUtils.writeField(r9, "mAdded", r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0082, code lost:
    
        return;
     */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onActivityPostSaveInstanceState(Activity activity, Bundle bundle) {
        Object[] objArr;
        Object obj;
        if (this.f1419a.getActivity() != activity) {
            return;
        }
        try {
            Parcelable parcelable = bundle.getParcelable("android:fragments");
            if (parcelable != null && (objArr = (Object[]) FieldUtils.readField(parcelable, "mActive")) != null) {
                int length = objArr.length;
                int i = 0;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        obj = null;
                        break;
                    }
                    obj = objArr[i2];
                    Object readField = FieldUtils.readField(obj, "mTag");
                    if ("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_plugin".equals(readField) || ((readField instanceof String) && (((String) readField).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle") || ((String) readField).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle")))) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0055, code lost:
    
        r0 = (java.lang.Object[]) java.lang.reflect.Array.newInstance(java.lang.Class.forName("android.app.FragmentState"), r10.length - 1);
        r2 = new int[r10.length - 1];
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
    
        if (r3 >= r10.length) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006d, code lost:
    
        r6 = r10[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006f, code lost:
    
        if (r6 == r5) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0071, code lost:
    
        r0[r4] = r6;
        r2[r4] = r3;
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007a, code lost:
    
        com.bytedance.pangle.util.FieldUtils.writeField(r9, "mActive", r0);
        com.bytedance.pangle.util.FieldUtils.writeField(r9, "mAdded", r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0082, code lost:
    
        return;
     */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Object[] objArr;
        Object obj;
        if (this.f1419a.getActivity() != activity) {
            return;
        }
        try {
            Parcelable parcelable = bundle.getParcelable("android:fragments");
            if (parcelable != null && (objArr = (Object[]) FieldUtils.readField(parcelable, "mActive")) != null) {
                int length = objArr.length;
                int i = 0;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        obj = null;
                        break;
                    }
                    obj = objArr[i2];
                    Object readField = FieldUtils.readField(obj, "mTag");
                    if ("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_plugin".equals(readField) || ((readField instanceof String) && (((String) readField).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle") || ((String) readField).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle")))) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
