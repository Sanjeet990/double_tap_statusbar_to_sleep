.class public Lcom/android/settings/gravity/SystemSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SystemSwitchPreference.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object p1, p0, Lcom/android/settings/gravity/SystemSwitchPreference;->context:Landroid/content/Context;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/gravity/SystemSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 25
    .local v0, "checked":I
    if-ge v0, v3, :cond_0

    .line 26
    invoke-virtual {p0, v4}, Lcom/android/settings/gravity/SystemSwitchPreference;->setChecked(Z)V

    .line 27
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/gravity/SystemSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/gravity/SystemSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    new-instance v0, Lcom/android/settings/gravity/SystemSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/gravity/SystemSwitchPreference$1;-><init>(Lcom/android/settings/gravity/SystemSwitchPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/gravity/SystemSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
