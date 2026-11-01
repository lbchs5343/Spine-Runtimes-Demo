package g;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.accessibility.AccessibilityNodeInfo;
import cn.trinea.android.developertools.R;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class he implements Parcelable {
    public static final Parcelable.Creator<he> CREATOR = new rj(0);
    public static final int LAYER_TOP = 1;
    public static final int UNDEFINED_CONNECTION_ID = -1;
    public static final int UNDEFINED_ITEM_ID = Integer.MAX_VALUE;
    public static final long UNDEFINED_NODE_ID = 9223372034707292159L;
    public static final int UNDEFINED_SELECTION_INDEX = -1;
    public static final int UNDEFINED_WINDOW_ID = -1;
    private List<AccessibilityNodeInfo.AccessibilityAction> actions;
    private Rect boundsInParent;
    private Rect boundsInScreen;
    private List<he> childNodeInfoList;
    private CharSequence className;
    private int connectionId;
    private CharSequence contentDescription;
    private int drawingOrderInParent;
    private CharSequence error;
    private CharSequence eventClassName;
    private CharSequence hintText;
    private int index;
    private int inputType;
    private boolean isCheckable;
    private boolean isChecked;
    private Boolean isClickable;
    private Boolean isEditable;
    private boolean isEnabled;
    private boolean isFocusable;
    private boolean isFocused;
    private Boolean isHeading;
    private Boolean isImportantForAccessibility;
    private boolean isInspected;
    private Boolean isLongClickable;
    private Boolean isMultiLine;
    private boolean isPassword;
    private boolean isScrollable;
    private boolean isSelected;
    private Boolean isVisibleToUser;
    private long labelForId;
    private long labeledById;
    private int layer;
    private int liveRegion;
    private int maxTextLength;
    private int movementGranularities;
    private CharSequence originalText;
    private CharSequence packageName;
    private CharSequence paneTitle;
    private long parentNodeId;
    private he parentNodeInfo;
    private boolean sealed;
    private long sourceNodeId;
    private CharSequence text;
    private int textSelectionEnd;
    private int textSelectionStart;
    private CharSequence tooltipText;
    private long traversalAfter;
    private long traversalBefore;
    private int viewId;
    private String viewIdResourceName;
    private String viewIdResourceNameHuman;
    private int windowId;

    public he(Parcel parcel) {
        this.windowId = -1;
        this.sourceNodeId = UNDEFINED_NODE_ID;
        this.parentNodeId = UNDEFINED_NODE_ID;
        this.labelForId = UNDEFINED_NODE_ID;
        this.labeledById = UNDEFINED_NODE_ID;
        this.traversalBefore = UNDEFINED_NODE_ID;
        this.traversalAfter = UNDEFINED_NODE_ID;
        this.boundsInParent = new Rect();
        this.boundsInScreen = new Rect();
        this.maxTextLength = -1;
        this.textSelectionStart = -1;
        this.textSelectionEnd = -1;
        this.inputType = 0;
        this.liveRegion = 0;
        this.connectionId = -1;
        this.childNodeInfoList = new ArrayList();
        this.isInspected = false;
        this.layer = -1;
        this.index = -1;
        this.viewId = -1;
        this.sealed = parcel.readByte() != 0;
        this.windowId = parcel.readInt();
        this.sourceNodeId = parcel.readLong();
        this.parentNodeId = parcel.readLong();
        this.labelForId = parcel.readLong();
        this.labeledById = parcel.readLong();
        this.traversalBefore = parcel.readLong();
        this.traversalAfter = parcel.readLong();
        this.boundsInParent = (Rect) parcel.readParcelable(Rect.class.getClassLoader());
        this.boundsInScreen = (Rect) parcel.readParcelable(Rect.class.getClassLoader());
        this.drawingOrderInParent = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.packageName = (CharSequence) creator.createFromParcel(parcel);
        this.eventClassName = (CharSequence) creator.createFromParcel(parcel);
        this.className = (CharSequence) creator.createFromParcel(parcel);
        this.originalText = (CharSequence) creator.createFromParcel(parcel);
        this.text = (CharSequence) creator.createFromParcel(parcel);
        this.hintText = (CharSequence) creator.createFromParcel(parcel);
        this.error = (CharSequence) creator.createFromParcel(parcel);
        this.paneTitle = (CharSequence) creator.createFromParcel(parcel);
        this.contentDescription = (CharSequence) creator.createFromParcel(parcel);
        this.tooltipText = (CharSequence) creator.createFromParcel(parcel);
        this.viewIdResourceName = parcel.readString();
        this.maxTextLength = parcel.readInt();
        this.movementGranularities = parcel.readInt();
        this.textSelectionStart = parcel.readInt();
        this.textSelectionEnd = parcel.readInt();
        this.inputType = parcel.readInt();
        this.liveRegion = parcel.readInt();
        this.connectionId = parcel.readInt();
        this.childNodeInfoList = parcel.createTypedArrayList(CREATOR);
        this.isInspected = parcel.readByte() != 0;
        this.isVisibleToUser = aky.f(parcel);
        this.isEnabled = parcel.readByte() != 0;
        this.isClickable = aky.f(parcel);
        this.isLongClickable = aky.f(parcel);
        this.isFocusable = parcel.readByte() != 0;
        this.isFocused = parcel.readByte() != 0;
        this.isCheckable = parcel.readByte() != 0;
        this.isChecked = parcel.readByte() != 0;
        this.isScrollable = parcel.readByte() != 0;
        this.isEditable = aky.f(parcel);
        this.isSelected = parcel.readByte() != 0;
        this.isPassword = parcel.readByte() != 0;
        this.isMultiLine = aky.f(parcel);
        this.isImportantForAccessibility = aky.f(parcel);
        this.isHeading = aky.f(parcel);
    }

    public he(AccessibilityNodeInfo accessibilityNodeInfo, int i, CharSequence charSequence) {
        boolean isHeading;
        boolean isImportantForAccessibility;
        CharSequence tooltipText;
        CharSequence paneTitle;
        CharSequence hintText;
        int drawingOrder;
        this.windowId = -1;
        this.sourceNodeId = UNDEFINED_NODE_ID;
        this.parentNodeId = UNDEFINED_NODE_ID;
        this.labelForId = UNDEFINED_NODE_ID;
        this.labeledById = UNDEFINED_NODE_ID;
        this.traversalBefore = UNDEFINED_NODE_ID;
        this.traversalAfter = UNDEFINED_NODE_ID;
        this.boundsInParent = new Rect();
        this.boundsInScreen = new Rect();
        this.maxTextLength = -1;
        this.textSelectionStart = -1;
        this.textSelectionEnd = -1;
        this.inputType = 0;
        this.liveRegion = 0;
        this.connectionId = -1;
        this.childNodeInfoList = new ArrayList();
        this.isInspected = false;
        this.index = -1;
        this.viewId = -1;
        this.layer = i;
        this.windowId = accessibilityNodeInfo.getWindowId();
        this.sourceNodeId = ((Long) awt.ac(accessibilityNodeInfo, "mSourceNodeId", false)).longValue();
        accessibilityNodeInfo.getBoundsInParent(this.boundsInParent);
        accessibilityNodeInfo.getBoundsInScreen(this.boundsInScreen);
        if (dyd.bp(24)) {
            drawingOrder = accessibilityNodeInfo.getDrawingOrder();
            this.drawingOrderInParent = drawingOrder;
        }
        this.packageName = accessibilityNodeInfo.getPackageName();
        this.eventClassName = charSequence;
        this.className = accessibilityNodeInfo.getClassName();
        this.originalText = (CharSequence) awt.ac(accessibilityNodeInfo, "mOriginalText", false);
        this.text = accessibilityNodeInfo.getText();
        if (dyd.bp(26)) {
            hintText = accessibilityNodeInfo.getHintText();
            this.hintText = hintText;
        }
        if (dyd.bp(21)) {
            this.error = accessibilityNodeInfo.getError();
        }
        if (dyd.bp(28)) {
            paneTitle = accessibilityNodeInfo.getPaneTitle();
            this.paneTitle = paneTitle;
        }
        this.contentDescription = accessibilityNodeInfo.getContentDescription();
        if (dyd.bp(28)) {
            tooltipText = accessibilityNodeInfo.getTooltipText();
            this.tooltipText = tooltipText;
        }
        if (dyd.bp(18)) {
            String viewIdResourceName = accessibilityNodeInfo.getViewIdResourceName();
            this.viewIdResourceName = viewIdResourceName;
            if (!TextUtils.isEmpty(viewIdResourceName)) {
                if (this.viewIdResourceName.indexOf("android:") == 0) {
                    this.viewIdResourceNameHuman = this.viewIdResourceName.replace("android:", "R.").replace("/", ".");
                } else {
                    this.viewIdResourceNameHuman = this.viewIdResourceName.replace(eyt.bk(this.packageName) + ":", "R.").replace("/", ".");
                }
            }
        }
        if (dyd.bp(21)) {
            this.actions = accessibilityNodeInfo.getActionList();
        }
        if (dyd.bp(21)) {
            this.maxTextLength = accessibilityNodeInfo.getMaxTextLength();
        }
        if (dyd.bp(16)) {
            this.movementGranularities = accessibilityNodeInfo.getMovementGranularities();
        }
        if (dyd.bp(18)) {
            this.textSelectionStart = accessibilityNodeInfo.getTextSelectionStart();
            this.textSelectionEnd = accessibilityNodeInfo.getTextSelectionEnd();
        }
        if (dyd.bp(19)) {
            this.inputType = accessibilityNodeInfo.getInputType();
            this.liveRegion = accessibilityNodeInfo.getLiveRegion();
        }
        if (dyd.bp(16)) {
            this.isVisibleToUser = Boolean.valueOf(accessibilityNodeInfo.isVisibleToUser());
            this.isClickable = Boolean.valueOf(accessibilityNodeInfo.isClickable());
            this.isLongClickable = Boolean.valueOf(accessibilityNodeInfo.isLongClickable());
        }
        this.isEnabled = accessibilityNodeInfo.isEnabled();
        this.isFocusable = accessibilityNodeInfo.isFocusable();
        this.isFocused = accessibilityNodeInfo.isFocused();
        this.isCheckable = accessibilityNodeInfo.isCheckable();
        this.isChecked = accessibilityNodeInfo.isChecked();
        this.isScrollable = accessibilityNodeInfo.isScrollable();
        if (dyd.bp(18)) {
            this.isEditable = Boolean.valueOf(accessibilityNodeInfo.isEditable());
        }
        this.isSelected = accessibilityNodeInfo.isSelected();
        this.isPassword = accessibilityNodeInfo.isPassword();
        if (dyd.bp(19)) {
            this.isMultiLine = Boolean.valueOf(accessibilityNodeInfo.isMultiLine());
        }
        if (dyd.bp(24)) {
            isImportantForAccessibility = accessibilityNodeInfo.isImportantForAccessibility();
            this.isImportantForAccessibility = Boolean.valueOf(isImportantForAccessibility);
        }
        if (dyd.bp(28)) {
            isHeading = accessibilityNodeInfo.isHeading();
            this.isHeading = Boolean.valueOf(isHeading);
        }
    }

    public static List<he> contains(he heVar, int i, int i2) {
        return contains(heVar, i, i2, null);
    }

    public static List<he> contains(he heVar, int i, int i2, bxi bxiVar) {
        if (heVar == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        LinkedList linkedList = new LinkedList();
        linkedList.add(heVar);
        while (!linkedList.isEmpty()) {
            he heVar2 = (he) linkedList.poll();
            if (!arrayList2.contains(heVar2)) {
                arrayList2.add(heVar2);
                if (heVar2.getBoundsInScreen().contains(i, i2) && (bxiVar == null || !((gpu) bxiVar).p(heVar2))) {
                    arrayList.add(heVar2);
                    if (heVar2.getParentNodeInfo() != null) {
                        arrayList.remove(heVar2.getParentNodeInfo());
                    }
                }
                for (int i3 = 0; i3 < heVar2.getChildCount(); i3++) {
                    he child = heVar2.getChild(i3);
                    if (child != null) {
                        linkedList.offer(child);
                    }
                }
            }
        }
        Collections.sort(arrayList, new aqn(13));
        return arrayList;
    }

    public static he fromAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo, int i, CharSequence charSequence) {
        if (accessibilityNodeInfo == null) {
            return null;
        }
        he heVar = new he(accessibilityNodeInfo, i, charSequence);
        LinkedList linkedList = new LinkedList();
        HashSet hashSet = new HashSet();
        linkedList.offer(new Pair(accessibilityNodeInfo, heVar));
        while (!linkedList.isEmpty()) {
            Pair pair = (Pair) linkedList.poll();
            AccessibilityNodeInfo accessibilityNodeInfo2 = (AccessibilityNodeInfo) pair.first;
            he heVar2 = (he) pair.second;
            if (hashSet.add(accessibilityNodeInfo2)) {
                for (int i2 = 0; i2 < accessibilityNodeInfo2.getChildCount(); i2++) {
                    AccessibilityNodeInfo child = accessibilityNodeInfo2.getChild(i2);
                    if (child == null && dyd.bp(18)) {
                        accessibilityNodeInfo2.refresh();
                        if (i2 < accessibilityNodeInfo2.getChildCount()) {
                            child = accessibilityNodeInfo2.getChild(i2);
                        }
                    }
                    if (child != null) {
                        he heVar3 = new he(child, heVar2.layer + 1, charSequence);
                        heVar3.setParentNodeInfo(heVar2);
                        linkedList.offer(new Pair(child, heVar3));
                    }
                }
            }
        }
        return heVar;
    }

    public static String toXMLLayout(Context context, he heVar, int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("    ");
        }
        String sb2 = sb.toString();
        String str = sb.toString() + "    ";
        StringBuilder sb3 = new StringBuilder();
        if (i == 0) {
            sb3.append("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
        }
        sb3.append("\n");
        sb3.append(sb2);
        sb3.append("<");
        sb3.append(heVar.getClassNameForLayout());
        if (i == 0) {
            sb3.append(" xmlns:android=\"http://schemas.android.com/apk/res/android\"");
        }
        int viewId = heVar.getViewId(context);
        if (viewId != -1) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:id=\"");
            sb3.append(viewId);
            sb3.append("\"");
        }
        String viewIdResourceNameForXMLLayout = heVar.getViewIdResourceNameForXMLLayout();
        if (!TextUtils.isEmpty(viewIdResourceNameForXMLLayout)) {
            awf.y(sb3, "\n", str, "android:idName=\"", viewIdResourceNameForXMLLayout);
            sb3.append("\"");
        }
        awf.a("\n", str, "android:layout_width=\"", sb3);
        sb3.append(heVar.getWidthForLayout(context));
        sb3.append("\"\n");
        sb3.append(str);
        sb3.append("android:layout_height=\"");
        sb3.append(heVar.getHeightForLayout(context));
        sb3.append("\"");
        if (!TextUtils.isEmpty(heVar.getPaneTitle())) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:accessibilityPaneTitle=\"");
            sb3.append(heVar.getPaneTitle());
            sb3.append("\"");
        }
        if (!TextUtils.isEmpty(heVar.getContentDescription())) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:contentDescription=\"");
            sb3.append(heVar.getContentDescription());
            sb3.append("\"");
        }
        if (!TextUtils.isEmpty(heVar.getText())) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:text=\"");
            sb3.append(heVar.getText());
            sb3.append("\"");
        }
        if (!TextUtils.isEmpty(heVar.getHintText())) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:hint=\"");
            sb3.append(heVar.getHintText());
            sb3.append("\"");
        }
        if (!heVar.isEnabled()) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:enabled=\"");
            sb3.append(heVar.isEnabled());
            sb3.append("\"");
        }
        if (heVar.isClickable() != null) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:clickable=\"");
            sb3.append(heVar.isClickable());
            sb3.append("\"");
        }
        if (heVar.isLongClickable() != null) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:longClickable=\"");
            sb3.append(heVar.isLongClickable());
            sb3.append("\"");
        }
        if (heVar.isFocusable()) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:focusable=\"");
            sb3.append(heVar.isFocusable());
            sb3.append("\"");
        }
        if (heVar.isChecked()) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:checked=\"");
            sb3.append(heVar.isChecked());
            sb3.append("\"");
        }
        if (heVar.isEditable() != null) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:editable=\"");
            sb3.append(heVar.isEditable());
            sb3.append("\"");
        }
        if (heVar.isPassword()) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:password=\"");
            sb3.append(heVar.isPassword());
            sb3.append("\"");
        }
        if (heVar.isMultiLine() != null) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:singleLine=\"");
            sb3.append(!heVar.isMultiLine().booleanValue());
            sb3.append("\"");
        }
        if (heVar.isImportantForAccessibility() != null) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:importantForAccessibility=\"");
            sb3.append(heVar.isImportantForAccessibility());
            sb3.append("\"");
        }
        if (heVar.isHeading() != null) {
            sb3.append("\n");
            sb3.append(str);
            sb3.append("android:accessibilityHeading=\"");
            sb3.append(heVar.isHeading());
            sb3.append("\"");
        }
        if (heVar.getChildCount() > 0) {
            sb3.append(">");
            for (int i3 = 0; i3 < heVar.getChildCount(); i3++) {
                he child = heVar.getChild(i3);
                if (child != null) {
                    sb3.append(toXMLLayout(context, child, i + 1));
                }
            }
            sb3.append("\n");
            sb3.append(sb2);
            sb3.append("</");
            sb3.append(heVar.getClassNameForLayout());
            sb3.append(">");
        } else {
            sb3.append("/>");
        }
        return sb3.toString();
    }

    public he addChildNodeInfoList(he heVar) {
        if (this.childNodeInfoList == null) {
            this.childNodeInfoList = new ArrayList();
        }
        this.childNodeInfoList.add(heVar);
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            he heVar = (he) obj;
            if (this.sealed != heVar.sealed || this.windowId != heVar.windowId || this.sourceNodeId != heVar.sourceNodeId || this.parentNodeId != heVar.parentNodeId || this.labelForId != heVar.labelForId || this.labeledById != heVar.labeledById || this.traversalBefore != heVar.traversalBefore || this.traversalAfter != heVar.traversalAfter || this.drawingOrderInParent != heVar.drawingOrderInParent || this.maxTextLength != heVar.maxTextLength || this.movementGranularities != heVar.movementGranularities || this.textSelectionStart != heVar.textSelectionStart || this.textSelectionEnd != heVar.textSelectionEnd || this.inputType != heVar.inputType || this.liveRegion != heVar.liveRegion || this.connectionId != heVar.connectionId || this.isInspected != heVar.isInspected || this.layer != heVar.layer || this.index != heVar.index || this.viewId != heVar.viewId || this.isEnabled != heVar.isEnabled || this.isFocusable != heVar.isFocusable || this.isFocused != heVar.isFocused || this.isCheckable != heVar.isCheckable || this.isChecked != heVar.isChecked || this.isScrollable != heVar.isScrollable || this.isSelected != heVar.isSelected || this.isPassword != heVar.isPassword) {
                return false;
            }
            Rect rect = this.boundsInParent;
            if (rect == null ? heVar.boundsInParent != null : !rect.equals(heVar.boundsInParent)) {
                return false;
            }
            Rect rect2 = this.boundsInScreen;
            if (rect2 == null ? heVar.boundsInScreen != null : !rect2.equals(heVar.boundsInScreen)) {
                return false;
            }
            CharSequence charSequence = this.packageName;
            if (charSequence == null ? heVar.packageName != null : !charSequence.equals(heVar.packageName)) {
                return false;
            }
            CharSequence charSequence2 = this.eventClassName;
            if (charSequence2 == null ? heVar.eventClassName != null : !charSequence2.equals(heVar.eventClassName)) {
                return false;
            }
            CharSequence charSequence3 = this.className;
            if (charSequence3 == null ? heVar.className != null : !charSequence3.equals(heVar.className)) {
                return false;
            }
            CharSequence charSequence4 = this.originalText;
            if (charSequence4 == null ? heVar.originalText != null : !charSequence4.equals(heVar.originalText)) {
                return false;
            }
            CharSequence charSequence5 = this.text;
            if (charSequence5 == null ? heVar.text != null : !charSequence5.equals(heVar.text)) {
                return false;
            }
            CharSequence charSequence6 = this.hintText;
            if (charSequence6 == null ? heVar.hintText != null : !charSequence6.equals(heVar.hintText)) {
                return false;
            }
            CharSequence charSequence7 = this.error;
            if (charSequence7 == null ? heVar.error != null : !charSequence7.equals(heVar.error)) {
                return false;
            }
            CharSequence charSequence8 = this.paneTitle;
            if (charSequence8 == null ? heVar.paneTitle != null : !charSequence8.equals(heVar.paneTitle)) {
                return false;
            }
            CharSequence charSequence9 = this.contentDescription;
            if (charSequence9 == null ? heVar.contentDescription != null : !charSequence9.equals(heVar.contentDescription)) {
                return false;
            }
            CharSequence charSequence10 = this.tooltipText;
            if (charSequence10 == null ? heVar.tooltipText != null : !charSequence10.equals(heVar.tooltipText)) {
                return false;
            }
            String str = this.viewIdResourceName;
            if (str == null ? heVar.viewIdResourceName != null : !str.equals(heVar.viewIdResourceName)) {
                return false;
            }
            List<AccessibilityNodeInfo.AccessibilityAction> list = this.actions;
            if (list == null ? heVar.actions != null : !list.equals(heVar.actions)) {
                return false;
            }
            List<he> list2 = this.childNodeInfoList;
            if (list2 == null ? heVar.childNodeInfoList != null : !list2.equals(heVar.childNodeInfoList)) {
                return false;
            }
            he heVar2 = this.parentNodeInfo;
            if (heVar2 == null ? heVar.parentNodeInfo != null : !heVar2.equals(heVar.parentNodeInfo)) {
                return false;
            }
            String str2 = this.viewIdResourceNameHuman;
            if (str2 == null ? heVar.viewIdResourceNameHuman != null : !str2.equals(heVar.viewIdResourceNameHuman)) {
                return false;
            }
            Boolean bool = this.isVisibleToUser;
            if (bool == null ? heVar.isVisibleToUser != null : !bool.equals(heVar.isVisibleToUser)) {
                return false;
            }
            Boolean bool2 = this.isClickable;
            if (bool2 == null ? heVar.isClickable != null : !bool2.equals(heVar.isClickable)) {
                return false;
            }
            Boolean bool3 = this.isLongClickable;
            if (bool3 == null ? heVar.isLongClickable != null : !bool3.equals(heVar.isLongClickable)) {
                return false;
            }
            Boolean bool4 = this.isEditable;
            if (bool4 == null ? heVar.isEditable != null : !bool4.equals(heVar.isEditable)) {
                return false;
            }
            Boolean bool5 = this.isMultiLine;
            if (bool5 == null ? heVar.isMultiLine != null : !bool5.equals(heVar.isMultiLine)) {
                return false;
            }
            Boolean bool6 = this.isImportantForAccessibility;
            if (bool6 == null ? heVar.isImportantForAccessibility != null : !bool6.equals(heVar.isImportantForAccessibility)) {
                return false;
            }
            Boolean bool7 = this.isHeading;
            Boolean bool8 = heVar.isHeading;
            if (bool7 != null) {
                return bool7.equals(bool8);
            }
            if (bool8 == null) {
                return true;
            }
        }
        return false;
    }

    public List<AccessibilityNodeInfo.AccessibilityAction> getActions() {
        return this.actions;
    }

    public int getArea() {
        return getHeight() * getWidth();
    }

    public String getBoundsHuman(Context context, Rect rect, String str) {
        StringBuilder o = awf.o(str);
        o.append(context.getString(R.string.li_view_cordinate_origin));
        o.append("\n");
        o.append(context.getString(R.string.li_top_left_corner));
        o.append(": [");
        o.append(rect.left);
        o.append("px, ");
        o.append(rect.top);
        o.append("px]\n");
        o.append(context.getString(R.string.li_also));
        o.append(": [");
        o.append(fso.aa(context, rect.left));
        o.append("dp, ");
        o.append(fso.aa(context, rect.top));
        o.append("dp]\n");
        o.append(context.getString(R.string.li_bottom_right_corner));
        o.append(": [");
        o.append(rect.right);
        o.append("px, ");
        o.append(rect.bottom);
        o.append("px]\n");
        o.append(context.getString(R.string.li_also));
        o.append(": [");
        o.append(fso.aa(context, rect.right));
        o.append("dp, ");
        o.append(fso.aa(context, rect.bottom));
        o.append("dp]");
        return o.toString();
    }

    public Rect getBoundsInParent() {
        return this.boundsInParent;
    }

    public void getBoundsInParent(Rect rect) {
        rect.set(this.boundsInParent);
    }

    public String getBoundsInParentHuman(Context context) {
        return getBoundsHuman(context, this.boundsInParent, context.getString(R.string.li_parent_cordinate_origin));
    }

    public String getBoundsInParentSimple() {
        return getBoundsSimple(this.boundsInParent);
    }

    public Rect getBoundsInScreen() {
        return this.boundsInScreen;
    }

    public void getBoundsInScreen(Rect rect) {
        rect.set(this.boundsInScreen);
    }

    public String getBoundsInScreenHuman(Context context) {
        return getBoundsHuman(context, this.boundsInScreen, context.getString(R.string.li_screen_cordinate_origin));
    }

    public String getBoundsInScreenSimple() {
        return getBoundsSimple(this.boundsInScreen);
    }

    public String getBoundsSimple(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.right + "," + rect.bottom;
    }

    public he getChild(int i) {
        List<he> list = this.childNodeInfoList;
        if (list == null || i >= list.size()) {
            return null;
        }
        return this.childNodeInfoList.get(i);
    }

    public int getChildCount() {
        return acw.bo(this.childNodeInfoList);
    }

    public List<he> getChildNodeInfoList() {
        return this.childNodeInfoList;
    }

    public CharSequence getClassName() {
        return this.className;
    }

    public CharSequence getClassNameForLayout() {
        CharSequence charSequence = this.className;
        return eyt.aq(charSequence == null ? null : charSequence.toString(), "android.widget.");
    }

    public int getConnectionId() {
        return this.connectionId;
    }

    public CharSequence getContentDescription() {
        return this.contentDescription;
    }

    public int getDrawingOrderInParent() {
        return this.drawingOrderInParent;
    }

    public CharSequence getError() {
        return this.error;
    }

    public CharSequence getEventClassName() {
        return this.eventClassName;
    }

    public int getHeight() {
        Rect rect = this.boundsInScreen;
        return rect.bottom - rect.top;
    }

    public String getHeight(Context context) {
        int height = getHeight();
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMaximumFractionDigits(2);
        String str = height <= 0 ? " Hidden" : "";
        StringBuilder sb = new StringBuilder();
        sb.append(height);
        sb.append("px (");
        sb.append(numberInstance.format(fso.ab(context, height)));
        sb.append("dp");
        return awf.ad(sb, str, ")");
    }

    public String getHeightForLayout(Context context) {
        int height = getHeight();
        he heVar = this.parentNodeInfo;
        return (heVar == null || height != heVar.getHeight()) ? getHeightInDP(context) : "match_parent";
    }

    public String getHeightInDP(Context context) {
        int height = getHeight();
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMaximumFractionDigits(2);
        return numberInstance.format(fso.ab(context, height)) + "dp";
    }

    public CharSequence getHintText() {
        return this.hintText;
    }

    public int getIndex() {
        return this.index;
    }

    public int getInputType() {
        return this.inputType;
    }

    public long getLabelForId() {
        return this.labelForId;
    }

    public long getLabeledById() {
        return this.labeledById;
    }

    public int getLayer() {
        return this.layer;
    }

    public int getLiveRegion() {
        return this.liveRegion;
    }

    public int getMaxTextLength() {
        return this.maxTextLength;
    }

    public int getMovementGranularities() {
        return this.movementGranularities;
    }

    public CharSequence getOriginalText() {
        return this.originalText;
    }

    public CharSequence getPackageName() {
        return this.packageName;
    }

    public CharSequence getPaneTitle() {
        return this.paneTitle;
    }

    public long getParentNodeId() {
        return this.parentNodeId;
    }

    public he getParentNodeInfo() {
        return this.parentNodeInfo;
    }

    public long getSourceNodeId() {
        return this.sourceNodeId;
    }

    public CharSequence getText() {
        return this.text;
    }

    public int getTextSelectionEnd() {
        return this.textSelectionEnd;
    }

    public int getTextSelectionStart() {
        return this.textSelectionStart;
    }

    public CharSequence getTooltipText() {
        return this.tooltipText;
    }

    public long getTraversalAfter() {
        return this.traversalAfter;
    }

    public long getTraversalBefore() {
        return this.traversalBefore;
    }

    public int getViewId(Context context) {
        Resources resources;
        if (this.viewId != -1 || TextUtils.isEmpty(this.packageName) || context == null || TextUtils.isEmpty(this.viewIdResourceName)) {
            return this.viewId;
        }
        try {
            Context createPackageContext = context.createPackageContext(eyt.bp(this.packageName), 4);
            if (createPackageContext != null && (resources = createPackageContext.getResources()) != null) {
                this.viewId = resources.getIdentifier(this.viewIdResourceName, null, null);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            erl.ac(e2);
        } catch (Resources.NotFoundException e3) {
            erl.ac(e3);
        } catch (Exception e4) {
            erl.ac(e4);
        }
        return this.viewId;
    }

    public String getViewIdIdHex(Context context) {
        if (getViewId(context) == -1) {
            return "0xffffffff";
        }
        return "0x" + Long.toHexString(getViewId(context)).toLowerCase();
    }

    public String getViewIdResourceName() {
        return this.viewIdResourceName;
    }

    public String getViewIdResourceNameForXMLLayout() {
        if (TextUtils.isEmpty(this.viewIdResourceName)) {
            return this.viewIdResourceName;
        }
        String str = this.viewIdResourceName;
        if (!TextUtils.isEmpty(this.packageName)) {
            str = this.viewIdResourceName.replace(((Object) this.packageName) + ":", "@+");
        }
        return str.replace("android:", "@android:");
    }

    public String getViewIdResourceNameHuman() {
        return this.viewIdResourceNameHuman;
    }

    public int getWidth() {
        return this.boundsInScreen.right - Math.round(r0.left);
    }

    public String getWidth(Context context) {
        int width = getWidth();
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMaximumFractionDigits(2);
        String str = width <= 0 ? " Hidden" : "";
        StringBuilder sb = new StringBuilder();
        sb.append(width);
        sb.append("px (");
        sb.append(numberInstance.format(fso.ab(context, width)));
        sb.append("dp");
        return awf.ad(sb, str, ")");
    }

    public String getWidthForLayout(Context context) {
        int width = getWidth();
        he heVar = this.parentNodeInfo;
        return (heVar == null || width != heVar.getWidth()) ? getWidthInDP(context) : "match_parent";
    }

    public String getWidthInDP(Context context) {
        int width = getWidth();
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMaximumFractionDigits(2);
        return numberInstance.format(fso.ab(context, width)) + "dp";
    }

    public int getWindowId() {
        return this.windowId;
    }

    public int hashCode() {
        int i = (((this.sealed ? 1 : 0) * 31) + this.windowId) * 31;
        long j = this.sourceNodeId;
        int i2 = (i + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.parentNodeId;
        int i3 = (i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.labelForId;
        int i4 = (i3 + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        long j4 = this.labeledById;
        int i5 = (i4 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.traversalBefore;
        int i6 = (i5 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
        long j6 = this.traversalAfter;
        int i7 = (i6 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
        Rect rect = this.boundsInParent;
        int hashCode = (i7 + (rect != null ? rect.hashCode() : 0)) * 31;
        Rect rect2 = this.boundsInScreen;
        int hashCode2 = (((hashCode + (rect2 != null ? rect2.hashCode() : 0)) * 31) + this.drawingOrderInParent) * 31;
        CharSequence charSequence = this.packageName;
        int hashCode3 = (hashCode2 + (charSequence != null ? charSequence.hashCode() : 0)) * 31;
        CharSequence charSequence2 = this.eventClassName;
        int hashCode4 = (hashCode3 + (charSequence2 != null ? charSequence2.hashCode() : 0)) * 31;
        CharSequence charSequence3 = this.className;
        int hashCode5 = (hashCode4 + (charSequence3 != null ? charSequence3.hashCode() : 0)) * 31;
        CharSequence charSequence4 = this.originalText;
        int hashCode6 = (hashCode5 + (charSequence4 != null ? charSequence4.hashCode() : 0)) * 31;
        CharSequence charSequence5 = this.text;
        int hashCode7 = (hashCode6 + (charSequence5 != null ? charSequence5.hashCode() : 0)) * 31;
        CharSequence charSequence6 = this.hintText;
        int hashCode8 = (hashCode7 + (charSequence6 != null ? charSequence6.hashCode() : 0)) * 31;
        CharSequence charSequence7 = this.error;
        int hashCode9 = (hashCode8 + (charSequence7 != null ? charSequence7.hashCode() : 0)) * 31;
        CharSequence charSequence8 = this.paneTitle;
        int hashCode10 = (hashCode9 + (charSequence8 != null ? charSequence8.hashCode() : 0)) * 31;
        CharSequence charSequence9 = this.contentDescription;
        int hashCode11 = (hashCode10 + (charSequence9 != null ? charSequence9.hashCode() : 0)) * 31;
        CharSequence charSequence10 = this.tooltipText;
        int hashCode12 = (hashCode11 + (charSequence10 != null ? charSequence10.hashCode() : 0)) * 31;
        String str = this.viewIdResourceName;
        int hashCode13 = (hashCode12 + (str != null ? str.hashCode() : 0)) * 31;
        List<AccessibilityNodeInfo.AccessibilityAction> list = this.actions;
        int hashCode14 = (((((((((((((((((((((hashCode13 + (list != null ? list.hashCode() : 0)) * 31) + this.maxTextLength) * 31) + this.movementGranularities) * 31) + this.textSelectionStart) * 31) + this.textSelectionEnd) * 31) + this.inputType) * 31) + this.liveRegion) * 31) + this.connectionId) * 31) + (this.isInspected ? 1 : 0)) * 31) + this.layer) * 31) + this.index) * 31;
        String str2 = this.viewIdResourceNameHuman;
        int hashCode15 = (((hashCode14 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.viewId) * 31;
        Boolean bool = this.isVisibleToUser;
        int hashCode16 = (((hashCode15 + (bool != null ? bool.hashCode() : 0)) * 31) + (this.isEnabled ? 1 : 0)) * 31;
        Boolean bool2 = this.isClickable;
        int hashCode17 = (hashCode16 + (bool2 != null ? bool2.hashCode() : 0)) * 31;
        Boolean bool3 = this.isLongClickable;
        int hashCode18 = (((((((((((hashCode17 + (bool3 != null ? bool3.hashCode() : 0)) * 31) + (this.isFocusable ? 1 : 0)) * 31) + (this.isFocused ? 1 : 0)) * 31) + (this.isCheckable ? 1 : 0)) * 31) + (this.isChecked ? 1 : 0)) * 31) + (this.isScrollable ? 1 : 0)) * 31;
        Boolean bool4 = this.isEditable;
        int hashCode19 = (((((hashCode18 + (bool4 != null ? bool4.hashCode() : 0)) * 31) + (this.isSelected ? 1 : 0)) * 31) + (this.isPassword ? 1 : 0)) * 31;
        Boolean bool5 = this.isMultiLine;
        int hashCode20 = (hashCode19 + (bool5 != null ? bool5.hashCode() : 0)) * 31;
        Boolean bool6 = this.isImportantForAccessibility;
        int hashCode21 = (hashCode20 + (bool6 != null ? bool6.hashCode() : 0)) * 31;
        Boolean bool7 = this.isHeading;
        return hashCode21 + (bool7 != null ? bool7.hashCode() : 0);
    }

    public boolean isCheckable() {
        return this.isCheckable;
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public Boolean isClickable() {
        return this.isClickable;
    }

    public Boolean isEditable() {
        return this.isEditable;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public boolean isFocusable() {
        return this.isFocusable;
    }

    public boolean isFocused() {
        return this.isFocused;
    }

    public Boolean isHeading() {
        return this.isHeading;
    }

    public Boolean isImportantForAccessibility() {
        return this.isImportantForAccessibility;
    }

    public boolean isInspected() {
        return this.isInspected;
    }

    public Boolean isLongClickable() {
        return this.isLongClickable;
    }

    public Boolean isMultiLine() {
        return this.isMultiLine;
    }

    public boolean isPassword() {
        return this.isPassword;
    }

    public boolean isScrollable() {
        return this.isScrollable;
    }

    public boolean isSealed() {
        return this.sealed;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public Boolean isVisibleToUser() {
        return this.isVisibleToUser;
    }

    public he setActions(List<AccessibilityNodeInfo.AccessibilityAction> list) {
        this.actions = list;
        return this;
    }

    public he setChildNodeInfoList(List<he> list) {
        this.childNodeInfoList = list;
        return this;
    }

    public he setClassName(CharSequence charSequence) {
        this.className = charSequence;
        return this;
    }

    public he setConnectionId(int i) {
        this.connectionId = i;
        return this;
    }

    public he setContentDescription(CharSequence charSequence) {
        this.contentDescription = charSequence;
        return this;
    }

    public he setDrawingOrderInParent(int i) {
        this.drawingOrderInParent = i;
        return this;
    }

    public he setError(CharSequence charSequence) {
        this.error = charSequence;
        return this;
    }

    public void setEventClassName(CharSequence charSequence) {
        this.eventClassName = charSequence;
    }

    public he setHintText(CharSequence charSequence) {
        this.hintText = charSequence;
        return this;
    }

    public he setIndex(int i) {
        this.index = i;
        return this;
    }

    public he setInputType(int i) {
        this.inputType = i;
        return this;
    }

    public he setInspected(boolean z) {
        this.isInspected = z;
        return this;
    }

    public he setLabelForId(long j) {
        this.labelForId = j;
        return this;
    }

    public he setLabeledById(long j) {
        this.labeledById = j;
        return this;
    }

    public he setLayer(int i) {
        this.layer = i;
        return this;
    }

    public he setLiveRegion(int i) {
        this.liveRegion = i;
        return this;
    }

    public he setMaxTextLength(int i) {
        this.maxTextLength = i;
        return this;
    }

    public he setMovementGranularities(int i) {
        this.movementGranularities = i;
        return this;
    }

    public he setOriginalText(CharSequence charSequence) {
        this.originalText = charSequence;
        return this;
    }

    public he setPackageName(CharSequence charSequence) {
        this.packageName = charSequence;
        return this;
    }

    public he setPaneTitle(CharSequence charSequence) {
        this.paneTitle = charSequence;
        return this;
    }

    public he setParentNodeId(long j) {
        this.parentNodeId = j;
        return this;
    }

    public he setParentNodeInfo(he heVar) {
        if (heVar == null) {
            return this;
        }
        heVar.addChildNodeInfoList(this);
        this.parentNodeInfo = heVar;
        return this;
    }

    public he setSealed(boolean z) {
        this.sealed = z;
        return this;
    }

    public he setSourceNodeId(long j) {
        this.sourceNodeId = j;
        return this;
    }

    public he setText(CharSequence charSequence) {
        this.text = charSequence;
        return this;
    }

    public he setTextSelectionEnd(int i) {
        this.textSelectionEnd = i;
        return this;
    }

    public he setTextSelectionStart(int i) {
        this.textSelectionStart = i;
        return this;
    }

    public he setTooltipText(CharSequence charSequence) {
        this.tooltipText = charSequence;
        return this;
    }

    public he setTraversalAfter(long j) {
        this.traversalAfter = j;
        return this;
    }

    public he setTraversalBefore(long j) {
        this.traversalBefore = j;
        return this;
    }

    public he setViewIdResourceName(String str) {
        this.viewIdResourceName = str;
        return this;
    }

    public he setViewIdResourceNameHuman(String str) {
        this.viewIdResourceNameHuman = str;
        return this;
    }

    public he setWindowId(int i) {
        this.windowId = i;
        return this;
    }

    public String toString() {
        return "UINodeInfo{childCount=" + getChildCount() + ", packageName=" + ((Object) this.packageName) + ", eventClassName=" + ((Object) this.eventClassName) + ", className=" + ((Object) this.className) + ", boundsInParent=" + this.boundsInParent + ", boundsInScreen=" + this.boundsInScreen + ", drawingOrderInParent=" + this.drawingOrderInParent + ", originalText=" + ((Object) this.originalText) + ", text=" + ((Object) this.text) + ", hintText=" + ((Object) this.hintText) + ", error=" + ((Object) this.error) + ", paneTitle=" + ((Object) this.paneTitle) + ", contentDescription=" + ((Object) this.contentDescription) + ", tooltipText=" + ((Object) this.tooltipText) + ", viewIdResourceName=" + this.viewIdResourceName + ", maxTextLength=" + this.maxTextLength + ", movementGranularities=" + this.movementGranularities + ", textSelectionStart=" + this.textSelectionStart + ", textSelectionEnd=" + this.textSelectionEnd + ", inputType=" + this.inputType + ", liveRegion=" + this.liveRegion + ", connectionId=" + this.connectionId + ", layer=" + this.layer + ", index=" + this.index + ", viewIdResourceNameHuman=" + this.viewIdResourceNameHuman + ", viewId=" + this.viewId + ", isVisibleToUser=" + this.isVisibleToUser + ", isEnabled=" + this.isEnabled + ", isClickable=" + this.isClickable + ", isLongClickable=" + this.isLongClickable + ", isFocusable=" + this.isFocusable + ", isFocused=" + this.isFocused + ", isCheckable=" + this.isCheckable + ", isChecked=" + this.isChecked + ", isScrollable=" + this.isScrollable + ", isEditable=" + this.isEditable + ", isSelected=" + this.isSelected + ", isPassword=" + this.isPassword + ", isMultiLine=" + this.isMultiLine + ", isImportantForAccessibility=" + this.isImportantForAccessibility + ", isHeading=" + this.isHeading + ", sealed=" + this.sealed + ", windowId=" + this.windowId + ", sourceNodeId=" + this.sourceNodeId + ", parentNodeId=" + this.parentNodeId + ", labelForId=" + this.labelForId + ", labeledById=" + this.labeledById + ", traversalBefore=" + this.traversalBefore + ", traversalAfter=" + this.traversalAfter + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.sealed ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.windowId);
        parcel.writeLong(this.sourceNodeId);
        parcel.writeLong(this.parentNodeId);
        parcel.writeLong(this.labelForId);
        parcel.writeLong(this.labeledById);
        parcel.writeLong(this.traversalBefore);
        parcel.writeLong(this.traversalAfter);
        parcel.writeParcelable(this.boundsInParent, i);
        parcel.writeParcelable(this.boundsInScreen, i);
        parcel.writeInt(this.drawingOrderInParent);
        TextUtils.writeToParcel(this.packageName, parcel, i);
        TextUtils.writeToParcel(this.eventClassName, parcel, i);
        TextUtils.writeToParcel(this.className, parcel, i);
        TextUtils.writeToParcel(this.originalText, parcel, i);
        TextUtils.writeToParcel(this.text, parcel, i);
        TextUtils.writeToParcel(this.hintText, parcel, i);
        TextUtils.writeToParcel(this.error, parcel, i);
        TextUtils.writeToParcel(this.paneTitle, parcel, i);
        TextUtils.writeToParcel(this.contentDescription, parcel, i);
        TextUtils.writeToParcel(this.tooltipText, parcel, i);
        parcel.writeString(this.viewIdResourceName);
        parcel.writeInt(this.maxTextLength);
        parcel.writeInt(this.movementGranularities);
        parcel.writeInt(this.textSelectionStart);
        parcel.writeInt(this.textSelectionEnd);
        parcel.writeInt(this.inputType);
        parcel.writeInt(this.liveRegion);
        parcel.writeInt(this.connectionId);
        parcel.writeTypedList(this.childNodeInfoList);
        parcel.writeByte(this.isInspected ? (byte) 1 : (byte) 0);
        aky.ai(parcel, this.isVisibleToUser);
        parcel.writeByte(this.isEnabled ? (byte) 1 : (byte) 0);
        aky.ai(parcel, this.isClickable);
        aky.ai(parcel, this.isLongClickable);
        parcel.writeByte(this.isFocusable ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isFocused ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isCheckable ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isChecked ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isScrollable ? (byte) 1 : (byte) 0);
        aky.ai(parcel, this.isEditable);
        parcel.writeByte(this.isSelected ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isPassword ? (byte) 1 : (byte) 0);
        aky.ai(parcel, this.isMultiLine);
        aky.ai(parcel, this.isImportantForAccessibility);
        aky.ai(parcel, this.isHeading);
    }
}
