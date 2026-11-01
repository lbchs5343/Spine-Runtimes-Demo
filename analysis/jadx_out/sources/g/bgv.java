package g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class bgv extends ListView {

    /* renamed from: a, reason: collision with root package name */
    public boolean f11545a;

    /* renamed from: b, reason: collision with root package name */
    public eqb f11546b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11547c;

    /* renamed from: d, reason: collision with root package name */
    public int f11548d;

    /* renamed from: e, reason: collision with root package name */
    public byd f11549e;

    /* renamed from: f, reason: collision with root package name */
    public fbo f11550f;

    /* renamed from: g, reason: collision with root package name */
    public int f11551g;
    public int h;
    public final Rect i;
    public final boolean j;
    public int k;
    public int l;

    public bgv(Context context, boolean z) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.i = new Rect();
        this.k = 0;
        this.f11548d = 0;
        this.f11551g = 0;
        this.h = 0;
        this.j = z;
        setCacheColorHint(0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.i;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f11549e != null) {
            return;
        }
        super.drawableStateChanged();
        eqb eqbVar = this.f11546b;
        if (eqbVar != null) {
            eqbVar.f15973b = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f11547c && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.j || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.j || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.j || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.j && this.f11545a) || super.isInTouchMode();
    }

    public final int m(int i, int i2) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i3 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i4 = 0;
        for (int i5 = 0; i5 < count; i5++) {
            int itemViewType = adapter.getItemViewType(i5);
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            view = adapter.getView(i5, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i6 = layoutParams.height;
            view.measure(i, i6 > 0 ? View.MeasureSpec.makeMeasureSpec(i6, C.ENCODING_PCM_32BIT) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i5 > 0) {
                i3 += dividerHeight;
            }
            i3 += view.getMeasuredHeight();
            if (i3 >= i2) {
                return i2;
            }
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0148 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean n(MotionEvent motionEvent, int i) {
        boolean z;
        boolean z2;
        View childAt;
        View childAt2;
        int actionMasked = motionEvent.getActionMasked();
        boolean z3 = false;
        if (actionMasked == 1) {
            z = false;
        } else {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    z = true;
                    if (z || z3) {
                        this.f11547c = false;
                        setPressed(false);
                        drawableStateChanged();
                        childAt2 = getChildAt(this.l - getFirstVisiblePosition());
                        if (childAt2 != null) {
                            childAt2.setPressed(false);
                        }
                    }
                    if (z) {
                        fbo fboVar = this.f11550f;
                        if (fboVar != null) {
                            if (fboVar.f16524c) {
                                fboVar.t();
                            }
                            fboVar.f16524c = false;
                        }
                    } else {
                        if (this.f11550f == null) {
                            this.f11550f = new fbo(this);
                        }
                        fbo fboVar2 = this.f11550f;
                        boolean z4 = fboVar2.f16524c;
                        fboVar2.f16524c = true;
                        fboVar2.onTouch(this, motionEvent);
                    }
                    return z;
                }
                z = false;
                if (z) {
                }
                this.f11547c = false;
                setPressed(false);
                drawableStateChanged();
                childAt2 = getChildAt(this.l - getFirstVisiblePosition());
                if (childAt2 != null) {
                }
                if (z) {
                }
                return z;
            }
            z = true;
        }
        int findPointerIndex = motionEvent.findPointerIndex(i);
        if (findPointerIndex >= 0) {
            int x = (int) motionEvent.getX(findPointerIndex);
            int y = (int) motionEvent.getY(findPointerIndex);
            int pointToPosition = pointToPosition(x, y);
            if (pointToPosition == -1) {
                z3 = true;
            } else {
                View childAt3 = getChildAt(pointToPosition - getFirstVisiblePosition());
                float f2 = x;
                float f3 = y;
                this.f11547c = true;
                int i2 = Build.VERSION.SDK_INT;
                dzq.a(this, f2, f3);
                if (!isPressed()) {
                    setPressed(true);
                }
                layoutChildren();
                int i3 = this.l;
                if (i3 != -1 && (childAt = getChildAt(i3 - getFirstVisiblePosition())) != null && childAt != childAt3 && childAt.isPressed()) {
                    childAt.setPressed(false);
                }
                this.l = pointToPosition;
                dzq.a(childAt3, f2 - childAt3.getLeft(), f3 - childAt3.getTop());
                if (!childAt3.isPressed()) {
                    childAt3.setPressed(true);
                }
                Drawable selector = getSelector();
                boolean z5 = (selector == null || pointToPosition == -1) ? false : true;
                if (z5) {
                    selector.setVisible(false, false);
                }
                int left = childAt3.getLeft();
                int top = childAt3.getTop();
                int right = childAt3.getRight();
                int bottom = childAt3.getBottom();
                Rect rect = this.i;
                rect.set(left, top, right, bottom);
                rect.left -= this.k;
                rect.top -= this.f11548d;
                rect.right += this.f11551g;
                rect.bottom += this.h;
                if (i2 >= 33) {
                    z2 = hci.a(this);
                } else {
                    Field field = gqr.f18594a;
                    if (field != null) {
                        try {
                            z2 = field.getBoolean(this);
                        } catch (IllegalAccessException e2) {
                            e2.printStackTrace();
                        }
                    }
                    z2 = false;
                }
                if (childAt3.isEnabled() != z2) {
                    boolean z6 = !z2;
                    if (Build.VERSION.SDK_INT >= 33) {
                        hci.b(this, z6);
                    } else {
                        Field field2 = gqr.f18594a;
                        if (field2 != null) {
                            try {
                                field2.set(this, Boolean.valueOf(z6));
                            } catch (IllegalAccessException e3) {
                                e3.printStackTrace();
                            }
                        }
                    }
                    if (pointToPosition != -1) {
                        refreshDrawableState();
                    }
                }
                if (z5) {
                    float exactCenterX = rect.exactCenterX();
                    float exactCenterY = rect.exactCenterY();
                    selector.setVisible(getVisibility() == 0, false);
                    selector.setHotspot(exactCenterX, exactCenterY);
                }
                Drawable selector2 = getSelector();
                if (selector2 != null && pointToPosition != -1) {
                    selector2.setHotspot(f2, f3);
                }
                eqb eqbVar = this.f11546b;
                if (eqbVar != null) {
                    eqbVar.f15973b = false;
                }
                refreshDrawableState();
                if (actionMasked == 1) {
                    performItemClick(childAt3, pointToPosition, getItemIdAtPosition(pointToPosition));
                }
                z = true;
                z3 = false;
            }
            if (z) {
            }
            this.f11547c = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.l - getFirstVisiblePosition());
            if (childAt2 != null) {
            }
            if (z) {
            }
            return z;
        }
        z = false;
        if (z) {
        }
        this.f11547c = false;
        setPressed(false);
        drawableStateChanged();
        childAt2 = getChildAt(this.l - getFirstVisiblePosition());
        if (childAt2 != null) {
        }
        if (z) {
        }
        return z;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f11549e = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        int i2 = 10;
        if (actionMasked == 10 && this.f11549e == null) {
            byd bydVar = new byd(i2, this);
            this.f11549e = bydVar;
            post(bydVar);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
            return onHoverEvent;
        }
        int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
            View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
            if (childAt.isEnabled()) {
                requestFocus();
                if (i < 30 || !dwv.f14980a) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                } else {
                    try {
                        dwv.f14981b.invoke(this, Integer.valueOf(pointToPosition), childAt, Boolean.FALSE, -1, -1);
                        dwv.f14982c.invoke(this, Integer.valueOf(pointToPosition));
                        dwv.f14983d.invoke(this, Integer.valueOf(pointToPosition));
                    } catch (IllegalAccessException e2) {
                        e2.printStackTrace();
                    } catch (InvocationTargetException e3) {
                        e3.printStackTrace();
                    }
                }
            }
            Drawable selector = getSelector();
            if (selector != null && this.f11547c && isPressed()) {
                selector.setState(getDrawableState());
            }
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.l = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        byd bydVar = this.f11549e;
        if (bydVar != null) {
            bgv bgvVar = (bgv) bydVar.f12434b;
            bgvVar.f11549e = null;
            bgvVar.removeCallbacks(bydVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f11545a = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        eqb eqbVar;
        if (drawable != null) {
            eqbVar = new eqb();
            Drawable drawable2 = eqbVar.f15972a;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            eqbVar.f15972a = drawable;
            if (drawable != null) {
                drawable.setCallback(eqbVar);
            }
            eqbVar.f15973b = true;
        } else {
            eqbVar = null;
        }
        this.f11546b = eqbVar;
        super.setSelector(eqbVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.k = rect.left;
        this.f11548d = rect.top;
        this.f11551g = rect.right;
        this.h = rect.bottom;
    }
}
