package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import androidx.appcompat.widget.AppCompatImageButton;
import g.akz;
import g.goi;
import g.gsw;

/* loaded from: classes3.dex */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f9052d = {R.attr.state_checked};

    /* renamed from: e, reason: collision with root package name */
    public boolean f9053e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f9054f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9055g;

    public static class a extends gsw {
        public static final Parcelable.Creator<a> CREATOR = new com.google.android.material.internal.a();
        boolean checked;

        public a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readFromParcel(parcel);
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        private void readFromParcel(Parcel parcel) {
            this.checked = parcel.readInt() == 1;
        }

        @Override // g.gsw, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.checked ? 1 : 0);
        }
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, cn.trinea.android.developertools.R.attr.imageButtonStyle);
        this.f9054f = true;
        this.f9055g = true;
        goi.ab(this, new akz(2, this));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f9053e;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        return this.f9053e ? View.mergeDrawableStates(super.onCreateDrawableState(i + 1), f9052d) : super.onCreateDrawableState(i);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.getSuperState());
        setChecked(aVar.checked);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.checked = this.f9053e;
        return aVar;
    }

    public void setCheckable(boolean z) {
        if (this.f9054f != z) {
            this.f9054f = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!this.f9054f || this.f9053e == z) {
            return;
        }
        this.f9053e = z;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z) {
        this.f9055g = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f9055g) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f9053e);
    }
}
