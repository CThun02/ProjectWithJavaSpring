package java5.poly.assignment.service.ServiceImpl;

import java5.poly.assignment.model.Account;
import java5.poly.assignment.repository.RepoI.AccountRepositoryDAO;
import java5.poly.assignment.service.ServiceI.AccountServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class AccountService implements AccountServiceI {

    @Autowired
    private AccountRepositoryDAO repo;

    @Override
    public Account save(Account account) {
        Account accountSave = repo.save(account);
        return accountSave;
    }

    @Override
    public Account update(Account account) {
        return null;
    }

    @Override
    public void delete(Account account) {

    }

    @Override
    public List<Account> getList() {
        return null;
    }

    @Override
    public Account getOne(UUID id) {
        return null;
    }
}