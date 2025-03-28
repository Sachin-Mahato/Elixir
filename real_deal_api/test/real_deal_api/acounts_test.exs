defmodule RealDealApi.AcountsTest do
  use RealDealApi.DataCase

  alias RealDealApi.Acounts

  describe "accounts" do
    alias RealDealApi.Acounts.Account

    import RealDealApi.AcountsFixtures

    @invalid_attrs %{email: nil, hash_password: nil}

    test "list_accounts/0 returns all accounts" do
      account = account_fixture()
      assert Acounts.list_accounts() == [account]
    end

    test "get_account!/1 returns the account with given id" do
      account = account_fixture()
      assert Acounts.get_account!(account.id) == account
    end

    test "create_account/1 with valid data creates a account" do
      valid_attrs = %{email: "some email", hash_password: "some hash_password"}

      assert {:ok, %Account{} = account} = Acounts.create_account(valid_attrs)
      assert account.email == "some email"
      assert account.hash_password == "some hash_password"
    end

    test "create_account/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Acounts.create_account(@invalid_attrs)
    end

    test "update_account/2 with valid data updates the account" do
      account = account_fixture()
      update_attrs = %{email: "some updated email", hash_password: "some updated hash_password"}

      assert {:ok, %Account{} = account} = Acounts.update_account(account, update_attrs)
      assert account.email == "some updated email"
      assert account.hash_password == "some updated hash_password"
    end

    test "update_account/2 with invalid data returns error changeset" do
      account = account_fixture()
      assert {:error, %Ecto.Changeset{}} = Acounts.update_account(account, @invalid_attrs)
      assert account == Acounts.get_account!(account.id)
    end

    test "delete_account/1 deletes the account" do
      account = account_fixture()
      assert {:ok, %Account{}} = Acounts.delete_account(account)
      assert_raise Ecto.NoResultsError, fn -> Acounts.get_account!(account.id) end
    end

    test "change_account/1 returns a account changeset" do
      account = account_fixture()
      assert %Ecto.Changeset{} = Acounts.change_account(account)
    end
  end
end
