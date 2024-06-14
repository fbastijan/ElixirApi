defmodule RealDealApiWeb.AccountJSON do
  alias RealDealApi.Accounts.Account

  @doc """
  Renders a list of accounts.
  """
  def index(%{accounts: accounts}) do
    %{data: for(account <- accounts, do: data(account))}
  end

  @doc """
  Renders a single account.
  """
  def show(%{account: account}) do
    %{data: data(account)}

  end
  def show2(%{account: account, token: token}) do
    %{data: data2(account, token)}

  end


  defp data(%Account{} = account) do
    %{
      id: account.id,
      email: account.email,
      hash_password: account.hash_password,
    }
  end
  defp data2(%Account{} = account, token) do
    %{
      id: account.id,
      email: account.email,
     token: token    }
  end
end
